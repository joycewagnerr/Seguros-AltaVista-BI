CREATE TABLE "SEGURO_G29611513".pais (
    cod_pais serial PRIMARY KEY,
    nb_pais varchar(45) NOT NULL
);

CREATE TABLE "SEGURO_G29611513".ciudad (
    cod_ciudad serial PRIMARY KEY,
    nb_ciudad varchar(45) NOT NULL,
    cod_pais serial NOT NULL,
    CONSTRAINT fk_pais FOREIGN KEY (cod_pais) REFERENCES "SEGURO_G29611513".pais(cod_pais)  
);

CREATE TABLE "SEGURO_G29611513".sucursal (
    cod_sucursal serial PRIMARY KEY,
    nb_sucursal varchar(45) NOT NULL,
    cod_ciudad serial NOT NULL,
    CONSTRAINT fk_ciudad FOREIGN KEY (cod_ciudad) REFERENCES "SEGURO_G29611513".ciudad(cod_ciudad)
);

CREATE TABLE "SEGURO_G29611513".tipo_producto (
    cod_tipo_producto serial PRIMARY KEY,
    nb_tipo_producto varchar(45) NOT NULL
);

CREATE TABLE "SEGURO_G29611513".producto (
    cod_producto serial PRIMARY KEY,
    nb_producto varchar(45) NOT NULL,
    descripcion varchar(100) NOT NULL,
    cod_tipo_producto serial NOT NULL,
    calificacion int NOT NULL,
    CONSTRAINT fk_cod_tipo_producto FOREIGN KEY (cod_tipo_producto ) REFERENCES "SEGURO_G29611513".tipo_producto(cod_tipo_producto)
);

CREATE TABLE "SEGURO_G29611513".cliente (
    cod_cliente serial PRIMARY KEY,
    nb_cliente varchar(50) NOT NULL,
    ci_rif varchar(45) NOT NULL,
    telefono varchar(45) NOT NULL,
    direccion varchar(100) NOT NULL,
    sexo varchar(45) NOT NULL,
    email varchar(45) NOT NULL,
    cod_sucursal serial NOT NULL,
    CONSTRAINT fk_cod_sucursal FOREIGN KEY (cod_sucursal) REFERENCES "SEGURO_G29611513".sucursal(cod_sucursal)
);

CREATE TABLE "SEGURO_G29611513".evaluacion_servicio (
    cod_evaluacion_servicio serial PRIMARY KEY,
    nb_descripcion varchar(100) NOT NULL
);

CREATE TABLE "SEGURO_G29611513".recomienda(
    cod_cliente serial NOT NULL REFERENCES "SEGURO_G29611513".cliente(cod_cliente),
    cod_evaluacion_servicio serial NOT NULL REFERENCES "SEGURO_G29611513".evaluacion_servicio(cod_evaluacion_servicio),
    cod_producto serial NOT NULL REFERENCES "SEGURO_G29611513".producto(cod_producto),
    recomienda_amigo varchar(2) NOT NULL,
    CONSTRAINT pk_recomienda PRIMARY KEY (cod_cliente, cod_evaluacion_servicio, cod_producto)
);

CREATE TABLE "SEGURO_G29611513".contrato (
    nro_contrato serial PRIMARY KEY,
    descrip_contrato varchar(100) NOT NULL
);

CREATE TABLE "SEGURO_G29611513".registro_contrato (
    nro_contrato serial NOT NULL REFERENCES "SEGURO_G29611513".contrato(nro_contrato),
    cod_producto serial NOT NULL REFERENCES "SEGURO_G29611513".producto(cod_producto),
    cod_cliente serial NOT NULL REFERENCES "SEGURO_G29611513".cliente(cod_cliente),
    cod_sucursal serial NOT NULL REFERENCES "SEGURO_G29611513".sucursal(cod_sucursal),
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    monto real NOT NULL,
    estado_contrato varchar(15) NOT NULL,
    CONSTRAINT pk_reg_contrato PRIMARY KEY (nro_contrato, cod_producto, cod_cliente, cod_sucursal)
);

CREATE TABLE "SEGURO_G29611513".siniestro (
    nro_siniestro serial PRIMARY KEY,
    descripcion_siniestro varchar(100) NOT NULL
);

CREATE TABLE "SEGURO_G29611513".registro_siniestro (
    nro_siniestro serial NOT NULL REFERENCES "SEGURO_G29611513".siniestro(nro_siniestro),
    nro_contrato serial NOT NULL REFERENCES "SEGURO_G29611513".contrato(nro_contrato),
    cod_cliente serial NOT NULL REFERENCES "SEGURO_G29611513".cliente(cod_cliente),
    cod_producto serial NOT NULL REFERENCES "SEGURO_G29611513".producto(cod_producto),
    fecha_siniestro date NOT NULL,
    fecha_respuesta date NOT NULL,
    id_rechazo varchar(2) NOT NULL,
    monto_reconocido real NOT NULL,
    monto_solicitado real NOT NULL,
    CONSTRAINT pk_reg_siniestro PRIMARY KEY (nro_siniestro, nro_contrato, cod_cliente, cod_producto, fecha_siniestro)
);


CREATE TABLE "SEGURO_G29611513".metas (
    nro_contrato serial NOT NULL REFERENCES "SEGURO_G29611513".contrato(nro_contrato),
    cod_producto serial NOT NULL REFERENCES "SEGURO_G29611513".producto(cod_producto),
	fecha_inicio_meta date NOT NULL,
	fecha_fin_meta date NOT NULL,
    monto_meta_ingreso real NOT NULL,
    meta_renovacion int NOT NULL,
    meta_asegurado int NOT NULL,
    CONSTRAINT pk_metas PRIMARY KEY (nro_contrato, cod_producto)
);