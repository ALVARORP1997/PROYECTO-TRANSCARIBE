USE transcaribe;

DELIMITER //
DROP PROCEDURE get_rutas_estaciones;

CREATE PROCEDURE get_rutas_estaciones(
    IN ruta_name VARCHAR(50)
)
BEGIN


    -- Esta es una forma de guardar valores de una consulta dentro de una variable
    DECLARE ruta_id BIGINT(20);

    SELECT id
    INTO ruta_id
    FROM `RUTAS`
    WHERE name = ruta_name
    COLLATE utf8mb4_unicode_ci;

    SET @sql = CONCAT("
        SELECT
            `rutas_estaciones`.`id` AS relation_id,
            `rutas`.`name` AS line_name,
            `estaciones`.`name` AS station_name
        FROM `rutas_estaciones`
        INNER JOIN `estaciones`
        ON `estaciones`.`id` = `rutas_estaciones`.`estaciones_id`
        INNER JOIN `rutas`
        ON `rutas`.`id` = `rutas_estaciones`.`rutas_id`
        WHERE `rutas_estaciones`.`rutas_id` = ", ruta_id);

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END //
DELIMITER ;
