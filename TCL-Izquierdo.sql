USE proyecto_izquierdo;

START TRANSACTION;

INSERT INTO productos (id, descripcion, precio_compra, precio_final) VALUES
(null, 'Celular Xiaomi Redmi Note 10 5G 4GB/128GB', 123456, precio_final(precio_compra)),
(null, 'Celular Xiaomi Redmi 10 Carbon Gray 4GB RAM 128GB', 234523, precio_final(precio_compra)),
(null, 'Celular Xiaomi 11T Pro 8GB RAM 256GB ROM', 323565, precio_final(precio_compra)),
(null, 'Celular Xiaomi 11T 8GB RAM 256GB ROM', 254343, precio_final(precio_compra));

SAVEPOINT sp_1;

INSERT INTO productos (id, descripcion, precio_compra, precio_final) VALUES
(null, 'Celular Motorola Razr 40 Ultra 512GB', 384298, precio_final(precio_compra)),
(null, 'Celular Motorola Moto G13 4/128', 123967, precio_final(precio_compra)),
(null, 'Celular Motorola Moto G32 6/128', 132544, precio_final(precio_compra)),
(null, 'Celular Motorola Moto E22 4/64', 125564, precio_final(precio_compra));

SAVEPOINT sp_2;

DELETE FROM vehiculos WHERE id = 2;

SAVEPOINT sp_3;

INSERT INTO vehiculos (id, patente, marca, modelo, id_repartidor) VALUES (null, 'AC246BA', 'Peugeot', 'Partner', 2);

ROLLBACK TO SAVEPOINT sp_3;

INSERT INTO vehiculos (id, patente, marca, modelo, id_repartidor) VALUES (null, 'AC247VA', 'Peugeot', 'Partner', 3);

COMMIT;