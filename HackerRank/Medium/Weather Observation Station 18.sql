SELECT 
    ROUND(ABS(X.A - X.B) + ABS(X.C - X.D),4)
FROM(
    
    SELECT
        MIN(LAT_N) AS A,
        MAX(LAT_N) AS B,
        MIN(LONG_W) AS C,
        MAX(LONG_W) AS D
    FROM STATION
) X