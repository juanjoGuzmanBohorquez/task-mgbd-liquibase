# 📚 Conceptos Básicos de Liquibase y Bases de Datos

## Liquibase

Liquibase es una herramienta de control de versiones para bases de datos. Permite gestionar cambios en la estructura de la base de datos de forma automática, segura y ordenada, similar a cómo Git controla el código.

---

##  Changelog

El **changelog** es un archivo (generalmente en XML, YAML, JSON o SQL) donde se definen todos los cambios que se aplicarán a la base de datos.
Es el historial completo de modificaciones.

---

##  Changeset

Un **changeset** es una unidad de cambio dentro del changelog.
Cada changeset representa una modificación específica, por ejemplo:

* Crear una tabla
* Insertar datos
* Modificar columnas

Cada uno tiene un identificador único para evitar que se ejecute más de una vez.

---

##  Rollback

El **rollback** permite deshacer cambios realizados en la base de datos.
Es útil cuando ocurre un error o se necesita volver a una versión anterior.

Ejemplo:

* Eliminar una tabla creada
* Revertir una inserción de datos

---

##  DDL (Data Definition Language)

El DDL es el conjunto de instrucciones que se utilizan para definir la estructura de la base de datos.

Ejemplos:

```sql
CREATE TABLE persona (...);
ALTER TABLE persona ADD columna;
DROP TABLE persona;
```

---

## DML (Data Manipulation Language)

El DML se utiliza para manipular los datos dentro de las tablas.

Ejemplos:

```sql
INSERT INTO persona VALUES (...);
UPDATE persona SET nombre = 'Juan';
DELETE FROM persona WHERE id = 1;
SELECT * FROM persona;
```

---

## Docker Compose

Docker Compose es una herramienta que permite definir y ejecutar múltiples contenedores Docker usando un archivo (`docker-compose.yml`).

Permite:

* Levantar bases de datos fácilmente
* Configurar servicios automáticamente
* Ejecutar todo con un solo comando

Ejemplo:

```bash
docker compose up -d
```

---

##  Migraciones de Base de Datos

Las **migraciones** son cambios controlados en la estructura o datos de la base de datos a lo largo del tiempo.

Permiten:

* Mantener consistencia entre entornos (desarrollo, pruebas, producción)
* Versionar la base de datos
* Automatizar despliegues

Liquibase es una herramienta que facilita este proceso mediante changelogs y changesets.

---

##  Conclusión

Estos conceptos son fundamentales para trabajar con bases de datos modernas, ya que permiten:

* Control de versiones
* Automatización
* Seguridad en cambios
* Trabajo en equipo eficiente
