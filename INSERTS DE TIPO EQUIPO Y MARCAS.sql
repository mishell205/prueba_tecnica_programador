use bd_servicios_tecnicos;

INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Laptop');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Smartphone');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Computadora de escritorio');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Impresora');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Tablet');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Servidor');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Router');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Switch');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Monitor');
INSERT INTO tipo_equipo (tipo_equipo) VALUES ('Proyector');

INSERT INTO marca_equipo (marca) VALUES ('HP');
INSERT INTO marca_equipo (marca) VALUES ('Dell');
INSERT INTO marca_equipo (marca) VALUES ('Lenovo');
INSERT INTO marca_equipo (marca) VALUES ('Apple');
INSERT INTO marca_equipo (marca) VALUES ('Samsung');
INSERT INTO marca_equipo (marca) VALUES ('Asus');
INSERT INTO marca_equipo (marca) VALUES ('Acer');
INSERT INTO marca_equipo (marca) VALUES ('Canon');
INSERT INTO marca_equipo (marca) VALUES ('Epson');
INSERT INTO marca_equipo (marca) VALUES ('Brother');
INSERT INTO marca_equipo (marca) VALUES ('Cisco');
INSERT INTO marca_equipo (marca) VALUES ('Netgear');
INSERT INTO marca_equipo (marca) VALUES ('LG');
INSERT INTO marca_equipo (marca) VALUES ('Sony');
INSERT INTO marca_equipo (marca) VALUES ('Microsoft');

INSERT INTO estado_servicio (estado) VALUES ('Recibido');
INSERT INTO estado_servicio (estado) VALUES ('En Reparación');
INSERT INTO estado_servicio (estado) VALUES ('Reparado');
INSERT INTO estado_servicio (estado) VALUES ('Finalizado');
INSERT INTO estado_servicio (estado) VALUES ('Entregado');
SELECT * FROM cliente;
GRANT ALL PRIVILEGES ON bd_servicios_tecnicos.cliente* TO 'root'@'localhost' IDENTIFIED BY 'fresa22';
FLUSH PRIVILEGES;

