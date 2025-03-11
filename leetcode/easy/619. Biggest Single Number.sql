/*
- 가장 큰, 단 하나만 있는 숫자 출력. 만약에 하나만 있는 숫자가 없다면, NULL 출력
- COUNT(num)이 = 1인 것 중에 MAX(num) 출력. NULL 
*/
SELECT
    MAX(X.NewNum) AS num
FROM(
    SELECT
        num as NewNum,
        COUNT(num) AS Counta
    FROM MyNumbers
    GROUP BY num
) X
WHERE X.Counta = 1