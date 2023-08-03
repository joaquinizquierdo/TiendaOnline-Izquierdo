USE proyecto_izquierdo;

INSERT INTO clientes (id, nombre, apellido) VALUES
(null, 'Rochell', 'McKie'),
(null, 'Naomi', 'Skells'),
(null, 'Gawen', 'Quinion'),
(null, 'Lionel', 'Gallardo'),
(null, 'Larisa', 'Robak');

INSERT INTO empleados (id, nombre, apellido, sueldo) VALUES
(null, 'Nicolai', 'Sprowles', 180000),
(null, 'Leo', 'Corneliussen', 150000),
(null, 'Ewan', 'Badrock', 150000),
(null, 'Leonard', 'Rableau', 130000),
(null, 'Kore', 'Jaan', 120000);

INSERT INTO repartidores (id, nombre, apellido, sueldo) VALUES
(null, 'Sam', 'Skocroft', 170000),
(null, 'Jecho', 'Peperell', 160000),
(null, 'Franny', 'Agott', 160000);

INSERT INTO pedidos (id, fecha, id_cliente, cantidad, total, id_preparador, id_repartidor) VALUES
(null, '2022-07-15', 3, 1, 220000, 2, 3),
(null, '2022-012-27', 5, 3, 703000, 4, 1),
(null, '2023-04-03', 1, 1, 150000, 5, 2);

INSERT INTO productos (id, descripcion, precio_compra, precio_final) VALUES
(null, 'Celular iPhone 14 Pro Max 256 GB', 330579, precio_final(precio_compra)),
(null, 'Celular iPhone 13 Pro 256 GB', 272728, precio_final(precio_compra)),
(null, 'Celular IPhone 12 128 GB', 181818, precio_final(precio_compra)),
(null, 'Celular Samsung Galaxy S23 Ultra 256 GB', 322314, precio_final(precio_compra)),
(null, 'Celular Samsung Galaxy Z Fold4 512 GB', 184298, precio_final(precio_compra)),
(null, 'Celular Samsung Galaxy A54 5G 128 GB', 123967, precio_final(precio_compra)),
(null, 'Cable USB Tipo C 1,5mts', 413, precio_final(precio_compra)),
(null, 'Cable USB Micro USB 2mts', 579, precio_final(precio_compra));

INSERT INTO proveedores (id, nombre, apellido) VALUES
(null, 'Samsung', null),
(null, 'Apple', null),
(null, 'Cherie', 'Drysdell');

INSERT INTO pedidos_stock (id, fecha, id_proveedor, cantidad, total) VALUES
(null, '2022-03-14', 2, 3, 950000),
(null, '2022-04-10', 3, 3, 3600),
(null, '2022-04-12', 1, 6, 913000);

INSERT INTO vehiculos (id, patente, marca, modelo, id_repartidor) VALUES
(null, 'AA453DA', 'Peugeot', 'Partner', 1),
(null, 'AB967NU', 'Peugeot', 'Partner', 3),
(null, 'AA543VR', 'Mercedes Benz', 'Sprinter', 2);