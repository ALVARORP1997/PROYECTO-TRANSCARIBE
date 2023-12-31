-- Active: 1693579009507@@LOCALHOST@3306@transcaribe
-- Crear las tablas
DROP DATABASE TRANSCARIBE;

CREATE DATABASE TRANSCARIBE;
USE TRANSCARIBE;

CREATE TABLE `RUTAS` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
    )
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;


-- Creación de la tabla de stations
CREATE TABLE `ESTACIONES` (
    `id` BIGINT(20),
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla de trains
DROP TABLE `VEHICULO`;

CREATE TABLE `VEHICULO` (
     `serial_number` VARCHAR(10) NOT NULL,
     `line_id` BIGINT(20) UNSIGNED NOT NULL,
     `type` TINYINT(4) NOT NULL,
     `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (serial_number),
    CONSTRAINT `trains_line_id_foreign` 
    FOREIGN KEY (`line_id`) REFERENCES `RUTAS` (`id`)
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;
