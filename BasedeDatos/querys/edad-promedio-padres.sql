/*Edad promedio de los padres al momento de...*/

SELECT AVG(edad_madn) AS EdadPromedioMadreNacimiento,
AVG(edad_padn) AS EdadPromedioPadreNacimiento
FROM sonora_natalidad
WHERE edad_madn != 99 AND edad_madn != 99 AND orden_part = 1;

SELECT AVG(edad_madr) AS EdadPromedioMadreRegistro, AVG(edad_padr) AS EdadPromedioPadreRegistro
FROM sonora_natalidad
WHERE edad_madn != 99 AND edad_madn != 99 AND orden_part = 1;


