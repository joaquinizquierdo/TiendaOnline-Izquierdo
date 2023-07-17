-- Curso SQL - Comision 43435
-- Clase 10 - Workshop 1
-- Joaquin Izquierdo - 43397434

-- Creacion base de datos y tablas

CREATE DATABASE proyecto_izquierdo;

USE proyecto_izquierdo;

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.clientes (
	id INT AUTO_INCREMENT
    , nombre VARCHAR(50) NOT NULL
    , apellido VARCHAR(50) NOT NULL
    , PRIMARY KEY (id)
    , INDEX nombre (nombre, apellido)
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.pedidos (
	id INT AUTO_INCREMENT
	, fecha DATE
    , id_cliente INT
    , cantidad INT NOT NULL
    , total INT NOT NULL
    , PRIMARY KEY (id)
    , FOREIGN KEY (id_cliente) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.productos (
	id INT AUTO_INCREMENT
	, descripcion VARCHAR(50)
    , precio INT
    , PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.proveedores (
	id INT AUTO_INCREMENT
    , nombre VARCHAR(50) NOT NULL
    , apellido VARCHAR(50)
    , PRIMARY KEY (id)
    , INDEX nombre (nombre, apellido)
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.pedidos_stock (
	id INT AUTO_INCREMENT
	, fecha DATE
    , id_proveedor INT
    , cantidad INT NOT NULL
    , total INT NOT NULL
    , PRIMARY KEY (id)
    , FOREIGN KEY (id_proveedor) REFERENCES proveedores (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.empleados (
	id INT AUTO_INCREMENT
    , nombre VARCHAR(50) NOT NULL
    , apellido VARCHAR(50) NOT NULL
    , sueldo INT
    , PRIMARY KEY (id)
    , INDEX nombre (nombre, apellido)
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.repartidores (
	id INT AUTO_INCREMENT
    , nombre VARCHAR(50) NOT NULL
    , apellido VARCHAR(50) NOT NULL
    , sueldo INT
    , PRIMARY KEY (id)
    , INDEX nombre (nombre, apellido)
);

