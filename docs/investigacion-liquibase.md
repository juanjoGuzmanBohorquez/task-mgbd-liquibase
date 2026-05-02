# Investigación: Gestión de Base de Datos con Liquibase

**Estudiante:** Juan Jose Guzman
**Materia:** Modelado y Gestión de Base de Datos
**Institución:** Universidad Corhuila

---

## 1. Conceptos de Infraestructura y Despliegue

*   **Docker Compose:** Es una herramienta que permite definir y ejecutar aplicaciones multi-contenedor. En nuestro proyecto, facilita el despliegue del motor PostgreSQL y la herramienta Liquibase de forma coordinada.
*   **Migraciones de Base de Datos:** Es la práctica de aplicar cambios de esquema (tablas, columnas) de manera incremental y reversible, permitiendo que la base de datos evolucione junto con el código del software.

## 2. Definiciones de Liquibase

*   **Liquibase:** Es una solución de código abierto para la gestión del ciclo de vida del esquema de bases de datos, que permite automatizar y versionar los cambios.
*   **Changelog:** Es el archivo principal que actúa como índice o registro maestro. En él se listan todos los archivos de cambios que deben ejecutarse.
*   **Changeset:** Es la unidad básica de cambio. Cada bloque de código SQL dentro de Liquibase se identifica como un changeset único (autor e ID) para evitar que se ejecute dos veces.
*   **Rollback:** Es la capacidad de deshacer o revertir un cambio aplicado. Si una migración falla o se requiere volver atrás, el rollback restaura el estado anterior de la base de datos.

## 3. Lenguajes de Consulta y Estructura

*   **DDL (Data Definition Language):** Lenguaje orientado a la definición de estructuras. Se utiliza para crear, modificar o eliminar objetos de la base de datos (tablas, índices, llaves primarias).
*   **DML (Data Manipulation Language):** Lenguaje orientado a la manipulación de los datos almacenados. Permite insertar nuevos registros, actualizar los existentes o borrarlos.

---