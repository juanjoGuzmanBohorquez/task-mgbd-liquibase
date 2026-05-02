
SELECT 
    df.factura_id AS nro_factura,
    p.nombre_producto,
    df.cantidad,
    p.precio AS precio_unitario,
    (df.cantidad * p.precio) AS subtotal
FROM detalle_factura df
JOIN producto p ON df.producto_id = p.id;

SELECT 
    f.id AS factura,
    per.nombre AS cliente,
    prod.nombre_producto,
    df.cantidad
FROM detalle_factura df
JOIN factura f ON df.factura_id = f.id
JOIN persona per ON f.persona_id = per.id
JOIN producto prod ON df.producto_id = prod.id
WHERE f.id = 1;