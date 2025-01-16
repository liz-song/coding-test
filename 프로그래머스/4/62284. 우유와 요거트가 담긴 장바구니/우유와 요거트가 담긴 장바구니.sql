# GROUP_CONCAT을 사용해 여러 행의 데이터를 한 줄로 합칠 수 있음 
SELECT 
    X.CART_ID
FROM (
    SELECT 	
        CART_ID,
        GROUP_CONCAT(NAME SEPARATOR ', ') AS NAMES
    FROM CART_PRODUCTS 
    WHERE NAME IN ('Yogurt', 'Milk') 
    GROUP BY CART_ID
) X 
WHERE X.NAMES LIKE '%Yogurt%' AND X.NAMES LIKE '%Milk%';
