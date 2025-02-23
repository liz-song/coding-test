/*
x1은 y2와 같고, y1과 x2가 같아야 함. 
나와는 다른 열이지만 조건을 만족하는 딱 하나만 찾아야함 
self join해서, 조건은 맞지만 '나'가 아닌 열을 찾아야함 > ROW_NUMBER()사용해서 내가 붙여주기 
*/


WITH RN_VER AS(
    SELECT
        X,
        Y,
        ROW_NUMBER () OVER(ORDER BY X,Y) as RN
    FROM Functions) 

SELECT 
    A.X,
    A.Y
FROM RN_VER A
    JOIN RN_VER B
        ON A.X = B.Y AND A.Y = B.X AND A.RN < B.RN
