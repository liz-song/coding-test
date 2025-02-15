WITH RECURSIVE Triangle(n) AS(
    SELECT 20
    UNION ALL
    SELECT n-1 FROM Triangle WHERE n>1)
    
SELECT
    REPEAT('* ',n) AS tri
FROM Triangle