-- 1. ¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año?
SELECT T1.NOMBRE_AEROLINEA, COUNT(T2.ID_MOVIMIENTO) AS T_MOVIMIENTOS
FROM aeropuertos T1
INNER JOIN vuelos T2 ON T1.ID_AEROPUERTO = T2.ID_AEROPUERTO
GROUP BY T2.ID_AEROPUERTO
ORDER BY T_MOVIMIENTOS DESC;

-- 2. ¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año?
SELECT T1.NOMBRE_AEROLINEA, COUNT(T2.DIA) AS N_VUELOS
FROM aerolineas T1
INNER JOIN vuelos T2 ON T1.ID_AEROLINEA = T2.ID_AEROLINEA
GROUP BY T1.NOMBRE_AEROLINEA
ORDER BY N_VUELOS DESC;


-- 3. ¿En qué día se han tenido mayor número de vuelos?
SELECT DIA, COUNT(DIA) AS VUELOS_POR_DIA FROM vuelos
GROUP BY DIA ORDER BY VUELOS_POR_DIA DESC;


-- 4.¿Cuáles son las aerolíneas que tienen mas de 2 vuelos por día?
SELECT T1.NOMBRE_AEROLINEA, T2.DIA, COUNT(T2.DIA) AS TOTAL
FROM aerolineas T1
INNER JOIN vuelos T2 on T1.ID_AEROLINEA = T2.ID_AEROLINEA
GROUP BY T1.NOMBRE_AEROLINEA, T2.DIA
ORDER BY TOTAL DESC;
