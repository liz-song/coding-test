-- 코드를 입력하세요
-- 1. JULY 테이블에서 이름 같은 애들끼리 TOTAL_ORDER 더하기
-- 2. 그 다음에 first_half와 JOIN해서 더해주기 -> JOIN의 기준은 FLAVOR?

SELECT
    X.FLAVOR
    FROM(
    SELECT 
        A.FLAVOR,
        A.TOTAL_ORDER + B.JULYORDER AS FULL_ORDER
    FROM FIRST_HALF A
        JOIN (
            SELECT 
            FLAVOR,
            SUM(TOTAL_ORDER) AS JULYORDER
        FROM JULY 
        GROUP BY FLAVOR
    ) B
            ON A.FLAVOR = B.FLAVOR
    ORDER BY FULL_ORDER DESC
    LIMIT 3
) X