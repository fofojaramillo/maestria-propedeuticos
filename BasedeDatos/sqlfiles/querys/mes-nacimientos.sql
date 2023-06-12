/*Nacimientos por mes en 2021*/

CREATE VIEW nacimientos_mes AS
SELECT m.descripcion as MesNacimiento,
COUNT(n.mes_nac) AS TotalRegistros
FROM sonora_natalidad n
JOIN mes m ON n.mes_nac = m.clave
WHERE ano_nac = 2021
GROUP BY n.mes_nac
ORDER BY n.mes_nac;

/*Mes donde hubo más nacimientos*/
SELECT m.descripcion AS MesNacimiento, COUNT(n.mes_nac) AS TotalRegistros
FROM sonora_natalidad n
JOIN mes m ON n.mes_nac = m.clave
WHERE ano_nac = 2021
GROUP BY mes_nac
ORDER BY TotalRegistros DESC
LIMIT 1;

/*Mes donde hubo menos nacimientos*/
SELECT m.descripcion AS MesNacimiento, COUNT(n.mes_nac) AS TotalRegistros
FROM sonora_natalidad n
JOIN mes m ON n.mes_nac = m.clave
WHERE ano_nac = 2021
GROUP BY mes_nac
ORDER BY TotalRegistros ASC
LIMIT 1;

