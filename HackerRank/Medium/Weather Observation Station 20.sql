SELECT ROUND(LAT_N, 4) AS MEDIAN
FROM (
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) AS subquery
WHERE row_num IN (FLOOR((total_rows + 1) / 2), CEIL((total_rows + 1) / 2));