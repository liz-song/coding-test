/*
자식의 수 세는 법: 자신의 ID가 PARENT ID에 있는 경우의 수를 세면 됨. 만약 없으면 0
정렬 기준: 개체의 ID에 대해서 오름차순 */
SELECT
    A.ID,
    COUNT(B.ID) AS CHILD_COUNT
FROM ECOLI_DATA A
LEFT JOIN ECOLI_DATA B ON A.ID = B.PARENT_ID
GROUP BY A.ID
ORDER BY A.ID;