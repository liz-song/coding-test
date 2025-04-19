/*
- 아직 입양을 못 갔다 = in이랑 out을 left join했는데 out.id가 null이다.
- 가장 오래 보호소에 있었다 = a.datetime을 오름차순으로 정렬했을 때 limit 3개 
- in A와 OUT B를 left join해서 WHERE 조건으로 IS NULL 사용 
*/

SELECT
    A.NAME,
    A.DATETIME
FROM ANIMAL_INS A
    LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL
ORDER BY A.DATETIME ASC
LIMIT 3;

