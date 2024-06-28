CREATE TABLE "SEGURO_DW_G29611513".dim_cliente (
    sk_dim_cliente serial PRIMARY KEY,
    cod_cliente serial NOT NULL,
    nb_cliente varchar(25) NOT NULL,
    ci_rif varchar(45) NOT NULL,
    telefono varchar(45) NOT NULL,
    direccion varchar(100) NOT NULL,
    sexo varchar(45) NOT NULL,
    email varchar(45) NOT NULL
);


CREATE TABLE "SEGURO_DW_G29611513".dim_producto (
    sk_dim_producto serial PRIMARY KEY,
    cod_producto serial NOT NULL,
    nb_producto varchar(25) NOT NULL,
    descrip_producto varchar(100) NOT NULL,
    cod_tipo_producto serial NOT NULL,
    nb_tipo_producto varchar(25) NOT NULL,
    calificacion int NOT NULL
);


CREATE TABLE "SEGURO_DW_G29611513".dim_contrato (
    sk_dim_contrato serial PRIMARY KEY,
    nro_contrato serial NOT NULL,
    descrip_contrato varchar(100) NOT NULL
);

CREATE TABLE "SEGURO_DW_G29611513".dim_estado_contrato (
    sk_dim_estado_contrato serial PRIMARY KEY,
    nro_estado serial NOT NULL,
    descrip_contrato varchar(25) NOT NULL
);

CREATE TABLE "SEGURO_DW_G29611513".dim_evaluacion_servicio (
    sk_dim_evaluacion_servicio serial PRIMARY KEY,
    cod_evaluacion_servicio serial NOT NULL,
    nb_descripcion varchar(25) NOT NULL
);

CREATE TABLE "SEGURO_DW_G29611513".dim_siniestro (
    sk_dim_siniestro serial PRIMARY KEY,
    nro_siniestro serial NOT NULL,
    descripcion_siniestro varchar(100) NOT NULL
);

CREATE TABLE "SEGURO_DW_G29611513".dim_sucursal (
    sk_dim_sucursal serial PRIMARY KEY,
    cod_sucursal serial NOT NULL,
    nb_sucursal varchar(25) NOT NULL,
    cod_ciudad serial NOT NULL,
    nb_ciudad varchar(45) NOT NULL,
    cod_pais serial NOT NULL,
    nb_pais varchar(45) NOT NULL
);

CREATE TABLE "SEGURO_DW_G29611513".dim_tiempo (
    sk_tiempo serial PRIMARY KEY,
	fecha date NOT NULL,
    cod_anio serial NOT NULL,
    cod_mes serial NOT NULL,
    cod_dia_anio serial NOT NULL,
    cod_dia_mes serial NOT NULL,
    cod_dia_semana serial NOT NULL,
    cod_semana serial NOT NULL,
    desc_dia_semana varchar(10) NOT NULL,
    desc_dia_semana_corta varchar(5) NOT NULL,
    desc_mes varchar(20) NOT NULL,
    desc_mes_corta varchar(3) NOT NULL,
    desc_trimestre varchar(20) NOT NULL
);


CREATE TABLE "SEGURO_DW_G29611513".fact_metas (
    sk_fact_metas serial PRIMARY KEY,
    sk_dim_fecha_inicio_meta serial NOT NULL,
    sk_dim_fecha_fin_meta serial NOT NULL,
    sk_dim_producto serial NOT NULL,
    sk_dim_contrato serial NOT NULL,
    monto_meta_ingreso real NOT NULL,
    meta_renovacion int NOT NULL,
    meta_asegurado int NOT NULL,
    CONSTRAINT fk_fecha_inicio_meta FOREIGN KEY (sk_dim_fecha_inicio_meta) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_fecha_fin_meta FOREIGN KEY (sk_dim_fecha_fin_meta) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_producto FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29611513".dim_producto(sk_dim_producto),
    CONSTRAINT fk_contrato FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29611513".dim_contrato(sk_dim_contrato)
);


CREATE TABLE "SEGURO_DW_G29611513".fact_evaluacion_servicio (
    sk_fact_evaluacion_servicio serial PRIMARY KEY,
    sk_dim_cliente serial NOT NULL,
    sk_dim_producto serial NOT NULL,
    sk_dim_evaluacion_servicio serial NOT NULL,
    cantidad int NOT NULL,
    recomienda_amigo char(2) NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29611513".dim_cliente(sk_dim_cliente),
    CONSTRAINT fk_producto FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29611513".dim_producto(sk_dim_producto),
    CONSTRAINT fk_evaluacion_servicio FOREIGN KEY (sk_dim_evaluacion_servicio) REFERENCES "SEGURO_DW_G29611513".dim_evaluacion_servicio(sk_dim_evaluacion_servicio)
);

CREATE TABLE "SEGURO_DW_G29611513".fact_registro_contrato (
    sk_fact_registro_contrato serial PRIMARY KEY,
    sk_fecha_inicio serial NOT NULL,
    sk_fecha_fin serial NOT NULL,
    sk_dim_cliente serial NOT NULL,
    sk_dim_contrato serial NOT NULL,
    sk_dim_sucursal serial NOT NULL,
    sk_dim_producto serial NOT NULL,
    sk_dim_estado_contrato serial NOT NULL,
    monto real NOT NULL,
    cantidad int NOT NULL,
    cantidad_cliente int NOT NULL,
    cantidad_producto int NOT NULL,
    cantidad_contrato int NOT NULL,
    CONSTRAINT fk_fecha_inicio FOREIGN KEY (sk_fecha_inicio) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_fecha_fin FOREIGN KEY (sk_fecha_fin) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_cliente FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29611513".dim_cliente(sk_dim_cliente),
    CONSTRAINT fk_producto FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29611513".dim_producto(sk_dim_producto),
    CONSTRAINT fk_sucursal FOREIGN KEY (sk_dim_sucursal) REFERENCES "SEGURO_DW_G29611513".dim_sucursal(sk_dim_sucursal),
    CONSTRAINT fk_contrato FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29611513".dim_contrato(sk_dim_contrato),
    CONSTRAINT fk_estado_contrato FOREIGN KEY (sk_dim_estado_contrato) REFERENCES "SEGURO_DW_G29611513".dim_estado_contrato(sk_dim_estado_contrato)
);

CREATE TABLE "SEGURO_DW_G29611513".fact_registro_siniestro (
    sk_fecha_siniestro serial NOT NULL,
    sk_fecha_respuesta serial NOT NULL,
    sk_dim_cliente serial NOT NULL,
    sk_dim_contrato serial NOT NULL,
    sk_dim_sucursal serial NOT NULL,
    sk_dim_producto serial NOT NULL,
    sk_dim_siniestro serial NOT NULL,
    cantidad int NOT NULL,
    monto_reconocido real NOT NULL,
    monto_solicitado real NOT NULL,
    id_rechazo char(2) NOT NULL,
    CONSTRAINT fk_fecha_siniestro FOREIGN KEY (sk_fecha_siniestro) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_fecha_respuesta FOREIGN KEY (sk_fecha_respuesta) REFERENCES "SEGURO_DW_G29611513".dim_tiempo(sk_tiempo),
    CONSTRAINT fk_cliente FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29611513".dim_cliente(sk_dim_cliente),
    CONSTRAINT fk_producto FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29611513".dim_producto(sk_dim_producto),
    CONSTRAINT fk_sucursal FOREIGN KEY (sk_dim_sucursal) REFERENCES "SEGURO_DW_G29611513".dim_sucursal(sk_dim_sucursal),
    CONSTRAINT fk_contrato FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29611513".dim_contrato(sk_dim_contrato),
    CONSTRAINT fk_siniestro FOREIGN KEY (sk_dim_siniestro) REFERENCES "SEGURO_DW_G29611513".dim_siniestro(sk_dim_siniestro)
);


drop table "SEGURO_DW_G29611513".dim_tiempo
drop table "SEGURO_DW_G29611513".fact_metas;
drop table "SEGURO_DW_G29611513".fact_registro_contrato;
drop table "SEGURO_DW_G29611513".fact_registro_siniestro;
drop table "SEGURO_DW_G29611513".fact_evaluacion_servicio;

DELETE FROM "SEGURO_DW_G29611513".fact_metas;
DELETE FROM "SEGURO_DW_G29611513".fact_registro_contrato;
DELETE FROM "SEGURO_DW_G29611513".fact_registro_siniestro;
DELETE FROM "SEGURO_DW_G29611513".fact_evaluacion_servicio;
DELETE FROM "SEGURO_DW_G29611513".dim_tiempo;
DELETE FROM "SEGURO_DW_G29611513".dim_cliente;
DELETE FROM "SEGURO_DW_G29611513".dim_producto;
DELETE FROM "SEGURO_DW_G29611513".dim_contrato;
DELETE FROM "SEGURO_DW_G29611513".dim_estado_contrato;
DELETE FROM "SEGURO_DW_G29611513".dim_evaluacion_servicio;
DELETE FROM "SEGURO_DW_G29611513".dim_siniestro;
DELETE FROM "SEGURO_DW_G29611513".dim_sucursal;
