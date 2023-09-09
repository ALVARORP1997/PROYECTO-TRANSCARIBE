USE transcaribe;


-- Creación de la tabla lines_stations
CREATE TABLE `rutas_estaciones` (
   `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
   `rutas_id` BIGINT(20) UNSIGNED NOT NULL,
   `estaciones_id` BIGINT(20) UNSIGNED NOT NULL,
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT `rutas_estaciones_rutas_id_foreign` 
    FOREIGN KEY (`rutas_id`) REFERENCES `rutas` (`id`),
    
    CONSTRAINT `rutas_estaciones_estaciones_id_foreign` 
    FOREIGN KEY (`estaciones_id`) REFERENCES `estaciones` (`id`)
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;