/*
- 어떤 수(n)가 소수인지 확인하려면: 2부터 루트 n까지 나눠서 나누어 떨어지는지 확인하면 됨. 나누어 떨어지지 않으면 소수
- 재귀문 쓰는 것은 비효율적
- 재귀문 사용해서 2~1000까지의 숫자 목록을 생성
- 소수 판별 서브쿼리 사용해서 2부터 루트 n까지 나눠지지 않는 수 필터링
- group concat사용해서 &로 출력 
*/

WITH RECURSIVE NumList(n) AS(
    SELECT
        2
    UNION ALL 
    SELECT n+1 FROM NumList WHERE n < 1000
)

SELECT
    GROUP_CONCAT(n SEPARATOR '&') 
FROM NumList A
WHERE NOT EXISTS(
    SELECT 1 FROM NumList B
    WHERE B.n * B.n <= A.n
    AND A.n % B.n = 0
    AND B.n > 1
    AND B.n <> A.n
)