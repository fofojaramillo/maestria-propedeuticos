/*Fue presentado al registro vivo o muerto*/

CREATE VIEW presentado_vivo_muerto AS
SELECT p.descripcion as 'Presentado vivo o muerto', 
COUNT(*) AS TotalRegistros,
COUNT(*) / (SELECT COUNT(*) FROM sonora_natalidad) * 100 AS Porcentaje
FROM sonora_natalidad n
JOIN presentado p ON p.clave = n.fue_prese
GROUP BY fue_prese;
	