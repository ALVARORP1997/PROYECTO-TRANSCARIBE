USE transcaribe;

-- Creación de la tabla de locations
DROP TABLE `ubicaciones`;
CREATE TABLE `ubicaciones` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `estaciones_id` BIGINT(20) UNSIGNED NOT NULL,
    `ubicaciones` POINT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT `ubicaciones_estaciones_id_foreign` 
    FOREIGN KEY (`estaciones_id`) REFERENCES `estaciones` (`id`)
    ) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;