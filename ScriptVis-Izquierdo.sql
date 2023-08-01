CREATE OR REPLACE VIEW ventas AS
	(SELECT p.id AS id_pedido, p.fecha, c.nombre, c.apellido FROM
    pedidos p JOIN clientes c ON (p.id_cliente = c.id));
    
SELECT * FROM ventas;

CREATE OR REPLACE VIEW compras AS
	(SELECT p.id AS id_pedido_stock, p.fecha, c.nombre, c.apellido FROM
    pedidos_stock p JOIN proveedores c ON (p.id_proveedor = c.id));
    
SELECT * FROM compras;

CREATE OR REPLACE VIEW pedidos_preparados AS
	(SELECT p.id AS id_pedido, p.id_cliente, p.total, e.nombre, e.apellido FROM
    pedidos p JOIN empleados e ON (p.id_cliente = e.id));
    
SELECT * FROM pedidos_preparados;

CREATE OR REPLACE VIEW pedidos_repartidos AS
	(SELECT p.id AS id_pedido, p.id_cliente, p.total, r.nombre, r.apellido FROM
    pedidos p JOIN repartidores r ON (p.id_cliente = r.id));

SELECT * FROM pedidos_preparados;

CREATE OR REPLACE VIEW vehiculos_y_repartidores AS
	(SELECT v.id AS id_vehiculo, v.patente, r.id AS id_repartidor, r.nombre, r.apellido FROM
    vehiculos v JOIN repartidores r ON (v.id_repartidor = r.id));

SELECT * FROM vehiculos_y_repartidores;
