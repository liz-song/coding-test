/*
- 매출액 구하려면, PRODUCT_ID기준으로 OFFLINE_SALE과 PRODUCT를 INNER JOIN 해야함 
- 정렬 기준 매출액, 상품코드 
*/

SELECT
    B.PRODUCT_CODE,
    SUM(B.PRICE * A.SALES_AMOUNT) AS SALES
FROM OFFLINE_SALE A
    JOIN PRODUCT B ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY B.PRODUCT_CODE
ORDER BY SUM(B.PRICE * A.SALES_AMOUNT) DESC, B.PRODUCT_CODE ASC;