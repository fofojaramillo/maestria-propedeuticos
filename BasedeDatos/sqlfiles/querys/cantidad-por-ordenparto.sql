/*Cantidad de partos agrupadas en orden de parto*/
/*Orden de parto se refiere a que parto es el bebe*/
/*Si es el primer parto de la madre, el segundo, etc.*/

SELECT o.descripcion, COUNT(*) AS Cantidad
FROM sonora_natalidad n
JOIN orden_del_parto o ON n.orden_part = o.clave
WHERE ano_nac = 2021
GROUP BY orden_part
ORDER BY orden_part;
