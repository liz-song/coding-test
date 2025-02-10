/*
- 조회조건이 정확하지 않은 문제. 
<사원별 성과금 정보>
1. 사원별로 score 평균에 따라 성과금 계산
만들어둔 테이블에서 case별로 계산 
출력해야할 것: 사번, 성명, 평가 등급, 성과금
*/
WITH GRADE_INFO AS (
    SELECT
        EMP_NO,
        CASE WHEN AVG(SCORE) >= 96 THEN 'S'
             WHEN AVG(SCORE) >= 90 THEN 'A'
             WHEN AVG(SCORE) >= 80 THEN 'B'
             ELSE 'C'
        END GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO
)

SELECT  
    A.EMP_NO, 
    A.EMP_NAME,
    B.GRADE,
    CASE WHEN B.GRADE = 'S' THEN A.SAL * 0.2
         WHEN B.GRADE = 'A' THEN A.SAL * 0.15
         WHEN B.GRADE = 'B' THEN A.SAL * 0.1
         ELSE 0
    END BONUS
FROM    HR_EMPLOYEES A, GRADE_INFO B
WHERE   A.EMP_NO = B.EMP_NO
ORDER BY A.EMP_NO;
