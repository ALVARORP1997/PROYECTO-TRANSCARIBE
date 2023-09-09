
USE transcaribe;
SELECT
`RUTAS`.`name`,
`vehiculo`.`serial_number`
FROM `RUTAS`
INNER JOIN `vehiculo`
ON `RUTAS`.`id` = `vehiculo`.`line_id`;