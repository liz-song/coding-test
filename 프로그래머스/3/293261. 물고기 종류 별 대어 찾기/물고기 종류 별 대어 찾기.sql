/*
- 물고기 종류별로 length를 보여주는 테이블이 필요함 
- 그 중 max를 구해야 함 
*/

SELECT 
    A.ID,
    B.FISH_NAME,
    A.LENGTH
FROM FISH_INFO A
JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE
JOIN (
    SELECT FISH_TYPE, MAX(LENGTH) AS MAX_LENGTH
    FROM FISH_INFO
    GROUP BY FISH_TYPE
) C ON A.FISH_TYPE = C.FISH_TYPE AND A.LENGTH = C.MAX_LENGTH
ORDER BY A.ID;
