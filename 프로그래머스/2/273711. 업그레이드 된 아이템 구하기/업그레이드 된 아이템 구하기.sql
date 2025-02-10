/*
- 필터링: 아이템의 희귀도가 'RARE'
- 아이템들의 모든 다음 업그레이드 아이템 구하기 = 내 id가 parent id로 들어가 있는 아이템들 출력 
*/

SELECT 
    B.ITEM_ID,
    C.ITEM_NAME,
    C.RARITY
FROM(
    SELECT
        ITEM_ID,
        ITEM_NAME,
        RARITY
    FROM ITEM_INFO 
    WHERE RARITY = 'RARE'
) A
    JOIN ITEM_TREE B ON A.ITEM_ID = B.PARENT_ITEM_ID
    JOIN ITEM_INFO C ON B.ITEM_ID = C.ITEM_ID
ORDER BY B.ITEM_ID DESC;