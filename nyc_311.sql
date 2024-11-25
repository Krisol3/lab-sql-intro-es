#Desafío Empresarial SQL: Ejercicio de Análisis de Datos

#USE nyc_311;
#Tareas del Desafío
#1. Identificar los Principales Tipos de Quejas
#Consulta el conjunto de datos para encontrar los 5 tipos principales de quejas basados en el número de quejas registradas.
SELECT complaint_type, COUNT(unique_key) AS total_complaints
FROM nyc_311.csv_limpio2
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

#2. Analizar Quejas por Distrito
#Calcula el número total de quejas para cada distrito.
SELECT borough, COUNT(unique_key) AS total_complaints
FROM nyc_311.csv_limpio2
GROUP BY 1
ORDER BY 2 DESC;

#3. Filtrar Tipos de Quejas de Alto Volumen
#Utiliza la cláusula HAVING para filtrar tipos de quejas que tienen más de 1000 quejas registradas. Muestra el tipo de queja y el recuento de quejas.
SELECT complaint_type, COUNT(unique_key) AS total_complaints
FROM nyc_311.csv_limpio2
GROUP BY 1
HAVING total_complaints > 100;

#4. Comparación de Distritos para un Tipo Específico de Queja
#Elige un tipo particular de queja.
#Compara el número de dichas quejas en cada distrito.
SELECT borough, COUNT(unique_key) AS total_complaints, complaint_type
FROM nyc_311.csv_limpio2
WHERE complaint_type LIKE '%noise%res%'
GROUP BY 3, 1;