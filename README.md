# Control Académico y Gestión de Alumnos (SQL Server)

## Descripción
Este proyecto abarca el diseño, estructuración y saneamiento de una base de datos relacional orientada al control académico de una institución educativa. Fue implementado mediante scripts en SQL Server (T-SQL), aplicando principios de modelado de datos como integridad referencial, restricciones de dominio e inclusión de valores predeterminados.

## Objetivo
Construir una arquitectura de base de datos eficiente para el registro de alumnos, cursos e inscripciones, asegurando la consistencia de la información mediante claves primarias, claves foráneas y reglas de negocio como la validación automática de mayoría de edad.

## Habilidades y conceptos aplicados
- **Diseño e implementación:** Creación y modificación de estructuras relacionales en SQL Server mediante comandos DDL (`CREATE`, `ALTER`, `ADD CONSTRAINT`).
- **Integridad de datos:** Aplicación de reglas y restricciones para garantizar la calidad de la información (`PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL` y `CHECK`).
- **Saneamiento de datos:** Identificación y corrección de inconsistencias en registros utilizando sentencias `UPDATE` e `INSERT`.
- **Funciones de fecha:** Uso de funciones integradas como `GETDATE()` y `DATEDIFF()` para automatizar validaciones y valores por defecto.
