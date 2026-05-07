## 📌 Evidencia de tablas creadas

```bash
docker compose exec db psql -U postgres -d mgbd_liquibase -c "\dt"

                 List of relations
 Schema |         Name          | Type  |  Owner   
--------+-----------------------+-------+----------
 public | databasechangelog     | table | postgres
 public | databasechangeloglock | table | postgres
 public | detalle_factura       | table | postgres
 public | factura               | table | postgres
 public | persona               | table | postgres
 public | producto              | table | postgres
 public | rol                   | table | postgres
 public | usuario               | table | postgres
(8 rows)
```


## 📌 Datos en la tabla persona

```bash
SELECT * FROM persona;

 id |           nombre           | documento  
----+----------------------------+------------
  2 | Mbappe Guzman              | 1075000222
  1 | Juan Jose Guzman Bohorquez | 1075000111
```



## 📌 Consulta de factura

```bash
SELECT * FROM factura;

 id |           fecha            | persona_id 
----+----------------------------+------------
  2 | 2026-05-07 20:13:56.270899 |          2
(1 row)
```


## 📌 Consulta de facturas con JOIN (cliente)

```bash
SELECT 
    f.id AS factura_nro, 
    f.fecha, 
    p.nombre AS cliente, 
    p.documento
FROM factura f
JOIN persona p ON f.persona_id = p.id;

 factura_nro |           fecha            |           cliente            | documento  
-------------+----------------------------+------------------------------+------------
           2 | 2026-05-07 20:13:56.270899 | Mbappe Guzman                | 1075000222
(1 row)
```