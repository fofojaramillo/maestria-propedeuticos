/*Pruebas*/
SELECT * FROM natalidad.`claves_sonora`  where cve_mun = 25;

SELECT COUNT(*) AS TotalRegistros
FROM sonora_natalidad;

SELECT COUNT(*) AS TotalNacimientos FROM sonora_natalidad WHERE ano_nac = 2021;