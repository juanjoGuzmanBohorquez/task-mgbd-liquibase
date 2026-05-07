
INSERT INTO rol (nombre_rol) VALUES ('Administrador');
INSERT INTO rol (nombre_rol) VALUES ('Vendedor');
INSERT INTO rol (nombre_rol) VALUES ('Cliente');


INSERT INTO persona (nombre, documento) VALUES ('Juan Jose Guzman', '1075000111');
INSERT INTO persona (nombre, documento) VALUES ('Mbappe Guzman', '1075000222');


INSERT INTO usuario (username, password, persona_id, rol_id) 
VALUES ('jguzman', 'admin123', 1, 1);

INSERT INTO usuario (username, password, persona_id, rol_id) 
VALUES ('mbappe', 'vendedor456', 2, 2);

INSERT INTO producto (nombre_producto, precio) VALUES ('MacBook Pro M3', 8500000);
INSERT INTO producto (nombre_producto, precio) VALUES ('Monitor 4K Dell', 1200000);
INSERT INTO producto (nombre_producto, precio) VALUES ('Teclado Mecanico', 350000);


INSERT INTO factura (persona_id) VALUES (1);


INSERT INTO detalle_factura (factura_id, producto_id, cantidad) VALUES (1, 1, 1);