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

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.pedidos (
	id INT AUTO_INCREMENT
	, fecha DATE
    , id_cliente INT
    , cantidad INT NOT NULL
    , total INT NOT NULL
    , id_preparador INT
    , id_repartidor INT
    , PRIMARY KEY (id)
    , FOREIGN KEY (id_cliente) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE CASCADE
    , FOREIGN KEY (id_preparador) REFERENCES empleados (id) ON DELETE RESTRICT ON UPDATE CASCADE
    , FOREIGN KEY (id_repartidor) REFERENCES repartidores (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.productos (
	id INT AUTO_INCREMENT
	, descripcion VARCHAR(50)
    , precio_compra INT
    , precio_final INT
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

CREATE TABLE IF NOT EXISTS proyecto_izquierdo.vehiculos (
	id INT AUTO_INCREMENT
    , patente VARCHAR(8) NOT NULL
    , marca VARCHAR (15)
    , modelo VARCHAR (25)
    , id_repartidor INT NOT NULL
    , PRIMARY KEY (id)
    , FOREIGN KEY (id_repartidor) REFERENCES repartidores (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

