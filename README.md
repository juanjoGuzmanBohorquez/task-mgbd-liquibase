# Laboratorio: Gestión de Base de Datos con Liquibase y Docker

**Estudiante:** Juan Jose Guzman
**Institución:** Universidad Corhuila
**Materia:** Modelado y Gestión de Base de Datos

---

## Descripción del Proyecto
Este proyecto implementa un sistema de base de datos contenedorizado para la gestión de facturación, utilizando **Docker** para la infraestructura y **Liquibase** para el control de versiones del esquema (migraciones). 

El sistema incluye el ciclo completo de vida de los datos:
*   **DDL:** Creación de tablas para Personas, Roles, Usuarios, Productos y Facturas.
*   **DML:** Inserción, actualización y borrado de registros de prueba (incluyendo datos de Juan Jose y Danna).

## Requisitos Previos
*   **Docker Desktop** instalado y en ejecución en tu Mac.
*   **Visual Studio Code** instalado.

## Estructura del Proyecto
*   `db/changelog/ddl`: Scripts de creación de estructuras (tablas, llaves foráneas).
*   `db/changelog/dml`: Scripts de manipulación de datos (insert, update, delete).
*   `db/scripts/queries`: Consultas SQL para verificar el funcionamiento.
*   `docs/`: Documentación teórica e informe de evidencias.

## Instrucciones Completas de Ejecución

Sigue estos pasos en el orden indicado para levantar el laboratorio en tu Mac:

### 1. Clonar el repositorio

git clone https://github.com/juanjoGuzmanBohorquez/task-mgbd-liquibase.git
cd task-mgbd-liquibase

### 2 levantar el servicio de Base de Datos
 * Inicia el contenedor de PostgreSQL en segundo plano:
 docker compose up -d db

### 3. Ejecutar las migraciones con Liquibase
 * Aplica todos los cambios estructurales y de datos (9 changesets en total):
docker compose run --rm liquibase update

### 4. Verificación de Datos (Queries)
 *Para comprobar que los datos se cargaron correctamente, ejecuta los scripts de consulta directamente en la terminal:
 
docker compose exec db psql -U postgres -d mgbd_liquibase -f /db/scripts/queries/001-select-personas.sql


docker compose exec db psql -U postgres -d mgbd_liquibase -f /db/scripts/queries/003-select-detalle-factura.sql