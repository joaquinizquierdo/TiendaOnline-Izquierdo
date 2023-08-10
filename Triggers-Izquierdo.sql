USE proyecto_izquierdo;

-- Creacion de una tabla LOG y un trigger asociado a la tabla productos para que cada vez que se agrgue o elimine un producto haya informacion acerca del producto, de cuando y quien hizo la accion

CREATE TABLE productos_log (
	id INT,
    descripcion VARCHAR(50),
    fecha_accion DATE,
    usuario VARCHAR(50),
    accion VARCHAR(10)
);

-- Trigger de cuando se agrega un producto
DELIMITER $$
CREATE TRIGGER `tr_agregar_producto`
AFTER INSERT ON `productos`
FOR EACH ROW
BEGIN
	INSERT INTO `productos_LOG` (id, descripcion, fecha_accion, usuario, accion) VALUES (NEW.id, NEW.descripcion, CURRENT_DATE(), USER(), 'Agregado');
END $$
DELIMITER ;

-- Trigger de cuando se elimina un producto
DELIMITER $$
CREATE TRIGGER `tr_eliminar_producto`
BEFORE DELETE ON `productos`
FOR EACH ROW
BEGIN
	INSERT INTO `productos_LOG` (id, descripcion, fecha_accion, usuario, accion) VALUES (OLD.id, OLD.descripcion, CURRENT_DATE(), USER(), 'Borrado');
END $$
DELIMITER ;



-- Creacion de una tabla LOG y un trigger para que cada vez que se actualice un registro de la tabla empleados queden los datos guardados y con la informacion de cuando se hizo el cambio y quien lo hizo

CREATE TABLE empleados_log (
	id INT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    sueldo INT,
    fecha_accion DATE,
    usuario VARCHAR(50),
	accion VARCHAR(10),
    FOREIGN KEY (id) REFERENCES empleados (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Trigger de cuando se modifica el registro de algun empleado
DELIMITER $$
CREATE TRIGGER `tr_update_empleado`
BEFORE UPDATE ON `empleados`
FOR EACH ROW
BEGIN
	INSERT INTO `empleados_log` (id, nombre, apellido, sueldo, fecha_accion, usuario, accion) VALUES (OLD.id, OLD.nombre, OLD.apellido, OLD.sueldo, CURRENT_DATE(), USER(), 'Modificado');
END $$
DELIMITER ;

-- Trigger de cuando se agrega un empleado 
DELIMITER $$
CREATE TRIGGER `tr_agregar_empleado`
AFTER INSERT ON `empleados`
FOR EACH ROW
BEGIN
	INSERT INTO `empleados_log` (id, nombre, apellido, sueldo, fecha_accion, usuario, accion) VALUES (NEW.id, NEW.nombre, NEW.apellido, NEW.sueldo, CURRENT_DATE(), USER(), 'Aregado');
END $$
DELIMITER ;