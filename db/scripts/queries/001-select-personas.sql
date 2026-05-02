
SELECT * FROM persona;

SELECT id, nombre, documento 
FROM persona 
WHERE documento = '1075000111';


SELECT * 
FROM persona 
WHERE nombre LIKE '%Guzman%';