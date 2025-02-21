WITH RECURSIVE Triangle(n) AS (
    SELECT 1  
    UNION ALL
    SELECT n + 1 FROM Triangle WHERE n < 20 
)
SELECT REPEAT("* ", n) AS tri FROM Triangle;
