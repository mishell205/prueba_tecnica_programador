CREATE DATABASE bd_servicios_tecnicos;

use bd_servicios_tecnicos;

CREATE TABLE tecnico (
	id_tecnico INT PRIMARY KEY AUTO_INCREMENT,
    primer_nombre VARCHAR(30) NOT NULL,
    segundo_nombre VARCHAR(30) NOT NULL,
    primer_apellido VARCHAR(30) NOT NULL,
    segundo_apellido VARCHAR(30) NOT NULL,
    especialidad VARCHAR(30) ,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_tecnico ON tecnico (id_tecnico);

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    primer_nombre VARCHAR(30) NOT NULL,
    segundo_nombre VARCHAR(30) NOT NULL,
    primer_apellido VARCHAR(30) NOT NULL,
    segundo_apellido VARCHAR(30) NOT NULL,
    direccion TEXT NOT NULL,
	telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_cliente ON cliente (id_cliente);

CREATE TABLE tipo_equipo (
	id_tipo_equipo INT PRIMARY KEY AUTO_INCREMENT,
    tipo_equipo VARCHAR(30) NOT NULL
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_tipo_equipo ON tipo_equipo (id_tipo_equipo);

CREATE TABLE marca_equipo (
	id_marca INT PRIMARY KEY AUTO_INCREMENT,
    marca TEXT NOT NULL
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_marca_equipo ON marca_equipo (id_marca);

CREATE TABLE equipo (
	id_equipo INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo_equipo INT NOT NULL,
    modelo TEXT NOT NULL,
    id_marca INT NOT NULL,
    numero_serie BIGINT NOT NULL,
    FOREIGN KEY (id_tipo_equipo) REFERENCES tipo_equipo(id_tipo_equipo),
    FOREIGN KEY (id_marca) REFERENCES marca_equipo(id_marca)
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_equipo ON equipo (id_equipo);

CREATE TABLE estado_servicio (
	id_estado_servicio INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(30) NOT NULL
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_estado_servicio ON estado_servicio (id_estado_servicio);

CREATE TABLE servicio (
	id_servicio INT PRIMARY KEY AUTO_INCREMENT,
    fecha_recepcion DATETIME NOT NULL,
    id_estado_servicio INT NOT NULL,
    diagnostico_servicio TEXT NOT NULL,
    solucion_servicio TEXT NOT NULL,
    id_tecnico INT NOT NULL,
    id_equipo INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_estado_servicio) REFERENCES estado_servicio(id_estado_servicio),
    FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico),
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
)ENGINE=InnoDB;
CREATE UNIQUE INDEX idx_servicios ON servicio (id_servicio);

SELECT * FROM estado_servicio;


