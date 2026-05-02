
SELECT 
    f.id AS factura_nro, 
    f.fecha, 
    p.nombre AS cliente, 
    p.documento
FROM factura f
JOIN persona p ON f.persona_id = p.id;


SELECT 
    f.id, 
    f.fecha
FROM factura f
JOIN persona p ON f.persona_id = p.id
WHERE p.documento = '1075000111';