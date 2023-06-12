/*Se cambio el formato de las columnas que indican a los municipios y localidades
para que coincidieran en tipo con claves-sonora y poder hacer las foreign keys*/

UPDATE `sonora-natalidad`
SET mun_regis = CAST(TRIM(LEADING '0' FROM mun_regis) AS UNSIGNED)
WHERE mun_regis REGEXP '^0+[1-9]';

UPDATE `sonora-natalidad`
SET mun_resid = CAST(TRIM(LEADING '0' FROM mun_resid) AS UNSIGNED)
WHERE mun_resid REGEXP '^0+[1-9]';

UPDATE `sonora-natalidad`
SET mun_ocurr = CAST(TRIM(LEADING '0' FROM mun_ocurr) AS UNSIGNED)
WHERE mun_ocurr REGEXP '^0+[1-9]';

UPDATE `sonora-natalidad`
SET loc_regis = CAST(TRIM(LEADING '0' FROM loc_regis) AS UNSIGNED)
WHERE loc_regis REGEXP '^0+[1-9]';

UPDATE `sonora-natalidad`
SET loc_resid = CAST(TRIM(LEADING '0' FROM loc_resid) AS UNSIGNED)
WHERE loc_resid REGEXP '^0+[1-9]';

UPDATE `sonora-natalidad`
SET loc_ocurr = CAST(TRIM(LEADING '0' FROM loc_ocurr) AS UNSIGNED)
WHERE loc_ocurr REGEXP '^0+[1-9]';