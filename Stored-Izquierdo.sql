USE proyecto_izquierdo;

-- ORDEN DE LAS TABLAS
DELIMITER //
CREATE PROCEDURE `orden` (IN nombre_tabla CHAR(20), IN field CHAR(20)) -- Primer dato es de la tabla, y el segundo del ordenamiento segun la columna
BEGIN
	IF nombre_tabla <> '' THEN
		SET @select_table = concat(nombre_tabla, ' ');
		SET @clientes_order = concat('ORDER BY ', field);
	ELSE
		SET @clientes_order = '';
        SET @select_table = 'pedidos';
	END IF;
    SET @clausula = concat('SELECT * FROM proyecto_izquierdo.', @select_table , @clientes_order);
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //

DELIMITER ;

-- Ejemplos:
-- Ordenar la tabla de pedidos por el total, CALL orden("pedidos", "total");
-- Ordenar la tabla de empleados por el sueldo, CALL orden("empleados", "sueldo");
-- Ordenar la tabla de productos por el precio de compra, CALL orden("productos", "precio_compra");




-- INSERCION DE DATOS DE LA TABLA PRODUCTOS
DELIMITER //
CREATE PROCEDURE `insertar_productos` (IN descripcion CHAR(50), IN precio INT) -- Primer dato es la descripcion del producto, y el segundo el precio de compra
BEGIN
	INSERT INTO proyecto_izquierdo.productos (id, descripcion, precio_compra, precio_final) VALUES (null,  descripcion, precio, precio_final(precio));
END //
DELIMITER ;

-- Ejemplos:
-- Insertar nuevo producto, CALL insertar_productos("Cable DisplayPort 1.4 2mts", 450);



-- ELIMINACION DE DATOS DE LA TABLA PRODUCTOS MEDIANTE EL ID
DELIMITER //
CREATE PROCEDURE `eliminar_productos` (IN id_delete INT) -- Ingresar el numero de ID del producto para eliminar
BEGIN
	DELETE FROM proyecto_izquierdo.productos WHERE id = id_delete;
END //
DELIMITER ;