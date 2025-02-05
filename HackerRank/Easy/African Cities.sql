SELECT 
    A.NAME
FROM CITY A
JOIN COUNTRY B
    ON A.COUNTRYCODE = B.CODE
WHERE B.CONTINENT = 'Africa'