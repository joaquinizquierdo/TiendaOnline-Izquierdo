USE proyecto_izquierdo;

DELIMITER $$
CREATE FUNCTION precio_final (precio_compra INT)
RETURNS INT
NO SQL
BEGIN
	DECLARE resultado INT;
	SET resultado = precio_compra * 1.21;
RETURN resultado;
END$$

DELIMITER ;

DELIMITER $$
CREATE FUNCTION consumo_nafta (cantidad_combustible INT, kilometros_realizados INT)
RETURNS DECIMAL(11, 2)
NO SQL
BEGIN
	DECLARE resultado FLOAT;
	SET resultado = (cantidad_combustible / kilometros_realizados) * 100;
RETURN resultado;
END$$

DELIMITER ;