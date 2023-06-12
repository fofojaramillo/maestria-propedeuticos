/*Registro por cada municpio*/

CREATE VIEW registros_por_municipios AS 
SELECT c.nom_loc AS Municipio, COUNT(n.mun_regis) AS TotalRegistros
FROM sonora_natalidad n
JOIN claves_sonora c ON n.mun_regis = c.cve_mun
WHERE c.cve_loc = 0
GROUP BY c.nom_loc
ORDER BY c.nom_loc;

