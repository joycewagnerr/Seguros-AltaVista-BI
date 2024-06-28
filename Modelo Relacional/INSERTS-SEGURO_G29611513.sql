INSERT INTO "SEGURO_G29611513".pais (nb_pais) VALUES
    ('Venezuela');

INSERT INTO "SEGURO_G29611513".ciudad (nb_ciudad, cod_pais)
VALUES
  ('Caracas', 1),
  ('Maracaibo', 1),
  ('Valencia', 1),
  ('Barquisimeto', 1);

INSERT INTO "SEGURO_G29611513".sucursal (nb_sucursal, cod_ciudad)
VALUES
  ('Sucursal Caracas', 1),
  ('Sucursal Maracaibo', 2),
  ('Sucursal Valencia', 3),
  ('Sucursal Barquisimeto', 4);


INSERT INTO "SEGURO_G29611513".tipo_producto (nb_tipo_producto)
VALUES
  ('Prestación de Servicios'),
  ('Personales'),
  ('Daños'),
  ('Patrimoniales');


INSERT INTO "SEGURO_G29611513".producto (nb_producto, descripcion, cod_tipo_producto, calificacion)
VALUES
  ('Automóvil', 'Seguro para vehículos automotores', 2, 4),
  ('Crédito y Caución', 'Seguro para operaciones crediticias y de garantía', 1, 3),
  ('Incendios', 'Seguro contra daños por incendio', 3, 5),
  ('Salud', 'Seguro para gastos médicos y hospitalarios', 2, 5),
  ('Multirriesgo Hogar', 'Seguro para proteger tu hogar y sus pertenencias', 4, 4),
  ('Vida', 'Seguro para proteger a tu familia en caso de fallecimiento', 2, 5),
  ('Viajes', 'Seguro para cubrir imprevistos durante tus viajes', 2, 4);


INSERT INTO "SEGURO_G29611513".cliente (nb_cliente, ci_rif, telefono, direccion, sexo, email, cod_sucursal) 
VALUES 
    ('María Pérez', 'V-12345678', '04121234567', 'Calle Principal, Urb. Las Flores', 'F', 'maria.perez@correo.com', 1),
    ('Juan González', 'V-98765432', '02812345678', 'Avenida Bolívar, Centro', 'M', 'juan.gonzalez@correo.com', 1),
    ('Ana López', 'V-11223455', '04243456789', 'Calle Sucre, Barrio San Miguel', 'F', 'ana.lopez@correo.com', 1),
    ('Pedro García', 'V-876543210', '02924567890', 'Calle Miranda, Urb. El Bosque', 'M', 'pedro.garcia@correo.com', 1),
    ('Carmen Romero', 'V-22344566', '04165678901', 'Avenida Libertador, Res. Las Palmeras', 'F', 'carmen.romero@correo.com', 1),
    ('David Silva', 'V-12356789', '04266789012', 'Calle Páez, Barrio Los Olivos', 'M', 'david.silva@correo.com', 1),
    ('Marta González', 'V-14564789', '04241234567', 'Urbanización La Colina, Casa 15', 'F', 'maria.gonzalez@empresa.com', 1),
    ('Jose López', 'V-9765432', '04264567890', 'Avenida Bolívar, Edificio Los Robles, Apto. 21', 'M', 'pedro.lopez@hotmail.com', 1),
    ('Luis Rodríguez', 'V-87654321', '02124321098', 'Calle Miranda, Sector Los Palos Grandes, Caracas', 'M', 'pedro.rodriguez@gmail.com', 1),

    ('Beatriz Castillo', 'V-12345678', '04121234567', 'Calle Principal, Urb. Las Flores', 'F', 'bea.castillo@correo.com', 2),
    ('Alejandro Jiménez', 'V-98765432', '02812345678', 'Avenida Bolívar, Centro', 'M', 'ale.jime@correo.com', 2),
    ('Daniela Fernández', 'V-11223455', '04243456789', 'Calle Sucre, Barrio San Miguel', 'F', 'danielafer@correo.com', 2),
    ('Benjamín López', 'V-876543210', '02924567890', 'Calle Miranda, Urb. El Bosque', 'M', 'benjalo@correo.com', 2),
    ('Elena Gutiérrez', 'V-22344566', '04165678901', 'Avenida Libertador, Res. Las Palmeras', 'F', 'elenagut@correo.com', 2),
    ('Carlos Martínez', 'V-12356789', '04266789012', 'Calle Páez, Barrio Los Olivos', 'M', 'carlos.marti@correo.com', 2),
    ('Laura Torres', 'V-14564789', '04241234567', 'Urbanización La Colina, Casa 15', 'F', 'laurat@empresa.com', 2),
    ('Daniel Pérez', 'V-9765432', '04264567890', 'Avenida Bolívar, Edificio Los Robles, Apto. 21', 'M', 'daniel.perez@hotmail.com', 2),
    ('Eduardo Rodríguez', 'V-87654321', '02124321098', 'Calle Miranda, Sector Los Palos Grandes, Caracas', 'M', 'eduardo.rodriguez@gmail.com', 2),

    ('Zara Hernández', 'V-12345678', '04121234567', 'Calle Principal, Urb. Las Flores', 'F', 'zara.hernandez@correo.com', 3),
    ('Fabio Sánchez', 'V-98765432', '02812345678', 'Avenida Bolívar, Centro', 'M', 'fabio.sanchez@correo.com', 3),
    ('Yuliana Gómez', 'V-11223455', '04243456789', 'Calle Sucre, Barrio San Miguel', 'F', 'yuligo@correo.com', 3),
    ('Gabriel Torres', 'V-876543210', '02924567890', 'Calle Miranda, Urb. El Bosque', 'M', 'gabotorres@correo.com', 3),
    ('Ximena Estrada', 'V-22344566', '04165678901', 'Avenida Libertador, Res. Las Palmeras', 'F', 'ximestradat@correo.com', 3),
    ('Héctor Vásquez', 'V-12356789', '04266789012', 'Calle Páez, Barrio Los Olivos', 'M', 'hector.vasquez@correo.com', 3),
    ('Valentina Díaz', 'V-14564789', '04241234567', 'Urbanización La Colina, Casa 15', 'F', 'valendiaz@empresa.com', 3),
    ('Isaac Zambrano', 'V-9765432', '04264567890', 'Avenida Bolívar, Edificio Los Robles, Apto. 21', 'M', 'isaaczam@hotmail.com', 3),
    ('Jorge Álvarez', 'V-87654321', '02124321098', 'Calle Miranda, Sector Los Palos Grandes, Caracas', 'M', 'jorgeal@gmail.com', 3),

    ('Olivia Álvarez', 'V-12345678', '04121234567', 'Calle Principal, Urb. Las Flores', 'F', 'olialvarez@correo.com', 4),
    ('Kevin Arias', 'V-98765432', '02812345678', 'Avenida Bolívar, Centro', 'M', 'kevinarias@correo.com', 4),
    ('Paola Arias', 'V-11223455', '04243456789', 'Calle Sucre, Barrio San Miguel', 'F', 'paola.arias@correo.com', 4),
    ('Leonardo Blanco', 'V-876543210', '02924567890', 'Calle Miranda, Urb. El Bosque', 'M', 'leonaradoblanco@correo.com', 4),
    ('Raquel Blanco', 'V-22344566', '04165678901', 'Avenida Libertador, Res. Las Palmeras', 'F', 'raquel.blanco@correo.com', 4),
    ('Marcos Campos', 'V-12356789', '04266789012', 'Calle Páez, Barrio Los Olivos', 'M', 'marcosss@correo.com', 4),
    ('Sofía Campos', 'V-14564789', '04241234567', 'Urbanización La Colina, Casa 15', 'F', 'soficampos@empresa.com', 4),
    ('Nicolás Díaz', 'V-9765432', '04264567890', 'Avenida Bolívar, Edificio Los Robles, Apto. 21', 'M', 'nicolasdiaz@hotmail.com', 4),
    ('Oscar Estrada', 'V-87654321', '02124321098', 'Calle Miranda, Sector Los Palos Grandes, Caracas', 'M', 'oscarestrada@gmail.com', 4);


INSERT INTO "SEGURO_G29611513".evaluacion_servicio (nb_descripcion) VALUES 
    ('Malo'),
    ('Regular'),
    ('Bueno'),
    ('Muy Bueno'),
    ('Excelente');

INSERT INTO "SEGURO_G29611513".recomienda (cod_cliente, cod_evaluacion_servicio, cod_producto, recomienda_amigo) VALUES 
    (1, 1, 1, 'No'),
    (2, 1, 3, 'No'),
    (3, 2, 2, 'Si'),
    (4, 2, 2, 'No'),
    (5, 2, 7, 'Si'),
    (6, 2, 7, 'Si'),
    (7, 2, 7, 'No'),
    (8, 2, 4, 'Si'),
    (9, 2, 4, 'Si'),
    (10, 3, 4, 'Si'),
    (11, 3, 4, 'No'),
    (12, 3, 4, 'Si'),
    (13, 4, 4, 'Si'),
    (14, 5, 5, 'Si'),
    (15, 5, 5, 'Si'),
    (16, 5, 4, 'Si'),
    (17, 5, 3, 'Si'),
    (18, 3, 6, 'No'),
    (19, 3, 6, 'Si'),
    (20, 3, 6, 'Si'),
    (21, 3, 1, 'No'),
    (22, 3, 1, 'Si'),
    (23, 4, 1, 'Si'),
    (24, 4, 1, 'Si'),
    (25, 4, 1, 'Si'),
    (26, 4, 1, 'Si'),
    (27, 4, 5, 'Si'),
    (28, 4, 5, 'Si');


INSERT INTO "SEGURO_G29611513".contrato (descrip_contrato)
VALUES
  ('Seguro de Auto Todo Riesgo'),
  ('Seguro de Hogar Integral'),
  ('Seguro de Vida Individual'),
  ('Seguro de Viaje Multidestino'),
  ('Seguro de Salud Familiar'),
  ('Seguro de Accidentes Personales'),
  ('Seguro de Responsabilidad Civil'),
  ('Seguro de Equipo Electrónico'),
  ('Seguro de Incendio y Terremoto'),
  ('Seguro de Vida Colectivo'),
  ('Seguro de Gastos Médicos Mayores'),
  ('Seguro de Protección Legal'),
  ('Seguro de Asistencia en Viaje'),
  ('Seguro de Protección de Mascotas'),
  ('Seguro de Cyber Riesgos');


INSERT INTO "SEGURO_G29611513".registro_contrato (nro_contrato, cod_producto, cod_cliente, cod_sucursal, fecha_inicio, fecha_fin, monto, estado_contrato) VALUES
    (1, 1, 1, 1, '2023-01-14', '2024-01-14', 140.0, 'activo'),
    (2, 5, 2, 1, '2023-02-25', '2024-02-25', 500.0, 'vencido'),
    (3, 6, 3, 1, '2023-02-04', '2024-02-04', 89.0, 'suspendido'),
    (4, 7, 4, 1, '2023-03-07', '2024-03-07', 230.0, 'activo'),
    (5, 4, 5, 2, '2023-04-09', '2024-04-09', 160.0, 'vencido'),
    (6, 4, 6, 2,  '2023-04-30', '2024-04-30', 170.0, 'suspendido'),
    (7, 2, 7, 2, '2023-05-17', '2024-05-17', 1789.0, 'activo'),
    (8, 5, 8, 2, '2023-06-05', '2024-06-05', 256.0, 'vencido'),
    (9, 3, 9, 2, '2023-07-17', '2024-07-17', 684.0, 'suspendido'),
    (10, 6, 10, 3, '2023-08-16', '2024-08-16', 462.0, 'activo'),
    (11, 4, 11, 3, '2023-09-03', '2024-09-03', 578.0, 'vencido'),
    (12, 2, 12, 3, '2023-10-14', '2024-10-14', 103.0, 'suspendido'),
    (13, 7, 13, 3, '2023-11-20', '2024-11-20', 445.0, 'activo'),
    (14, 6, 14, 4, '2023-11-30', '2024-11-30', 8569.0, 'vencido'),
    (15, 2, 15, 4, '2023-12-05', '2024-12-05', 1542.0, 'suspendido'),
	  (1, 2, 36, 4, '2023-01-14', '2024-01-14', 140.0, 'activo');



INSERT INTO "SEGURO_G29611513".siniestro (descripcion_siniestro) VALUES
  ('Accidente automovilístico'),
  ('Robo de hogar'),
  ('Inundación en vivienda'),
  ('Incendio en local comercial'),
  ('Daño por vandalismo'),
  ('Pérdida de equipaje en viaje'),
  ('Accidente de trabajo'),
  ('Rotura de cristales'),
  ('Robo de vehículo'),
  ('Daño por tormenta'),
  ('Responsabilidad civil'),
  ('Asistencia en viaje'),
  ('Rotura de maquinaria'),
  ('Robo de mercancía'),
  ('Daño por animales');


INSERT INTO "SEGURO_G29611513".registro_siniestro (nro_siniestro, nro_contrato, cod_cliente, cod_producto, fecha_siniestro, fecha_respuesta, id_rechazo, monto_reconocido, monto_solicitado) VALUES
    (1, 1, 1, 1, '2023-01-15', '2023-02-15', 'NO', 500.00, 1000.00),
    (2, 2, 2, 5, '2023-02-14', '2023-03-14', 'NO', 500.00, 1000.00),
    (3, 2, 3, 5, '2023-03-02', '2023-04-02', 'SI', 500.00, 1000.00),
    (4, 9, 4, 3, '2023-04-30', '2023-05-30', 'NO', 500.00, 1000.00),
    (5, 2, 5, 5, '2023-05-05', '2023-06-05', 'SI', 500.00, 1000.00),
    (6, 4, 6, 7, '2023-06-10', '2023-07-10', 'NO', 500.00, 1000.00),
    (7, 7, 7, 2, '2023-07-19', '2023-08-19', 'SI', 500.00, 1000.00),
    (8, 6, 8, 2, '2023-08-24', '2023-09-24', 'NO', 500.00, 1000.00),
    (9, 1, 9, 1, '2023-09-27', '2023-10-27', 'NO', 500.00, 1000.00),
    (10, 9, 10, 6, '2023-10-11', '2023-11-11', 'NO', 500.00, 1000.00),
    (11, 7, 11, 2, '2023-10-06', '2023-11-06', 'NO', 500.00, 1000.00),
    (1, 5, 12, 1, '2023-01-14', '2023-02-14', 'NO', 500.00, 1000.00),
    (15, 15, 13, 2, '2023-08-03', '2023-09-03', 'SI', 500.00, 1000.00),
    (12, 7, 14, 2, '2023-06-02', '2023-07-02', 'SI', 500.00, 1000.00),
    (13, 8, 15, 2, '2023-05-30', '2023-06-30', 'NO', 500.00, 1000.00),
    (14, 7, 16, 2, '2022-05-05', '2022-06-05', 'NO', 500.00, 1000.00),
    (15, 6, 17, 4, '2022-06-10', '2022-07-10', 'NO', 500.00, 1000.00),
    (6, 6, 18, 7, '2022-07-19', '2022-08-19', 'NO', 500.00, 1000.00),
    (5, 10, 19, 2, '2022-08-24', '2022-09-24', 'NO', 500.00, 1000.00),
    (9, 1, 20, 1, '2022-09-27', '2022-10-27', 'NO', 500.00, 1000.00),
    (10, 9, 21, 4, '2022-10-11', '2022-11-11', 'SI', 500.00, 1000.00);


INSERT INTO "SEGURO_G29611513".metas (nro_contrato, cod_producto, fecha_inicio_meta, fecha_fin_meta, monto_meta_ingreso, meta_renovacion, meta_asegurado) VALUES
    (1, 1, '2023-01-01', '2024-01-01', 5000.00, 50, 100),
    (2, 5, '2023-01-01', '2024-01-01', 4000.00, 20, 80),
    (9, 3, '2023-01-01', '2024-01-01', 5000.00, 30, 70),
    (11, 4, '2023-01-01', '2024-01-01', 6000.00, 80, 100),
    (5, 6, '2023-01-01', '2024-01-01', 6000.00, 50, 70),
    (4, 7, '2023-01-01', '2024-01-01', 5000.00, 50, 80),
    (7, 2, '2023-01-01', '2024-01-01', 8000.00, 50, 80);