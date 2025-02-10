/*
- parent 아이템이 없다 = 이전 업그레이드 아이템이 없다. 
- 더 이상 업그레이드 할 수 없는 아이템 = 본인 ID가 다른 아이템의 PARENT_ITEM_ID로 존재하지 않는 아이템
- 정렬 기준: 아이템 ID 기준으로 내림차순
*/
SELECT
    X.ITEM_ID,
    B.ITEM_NAME,
    B.RARITY
FROM(
    SELECT
        A.ITEM_ID,
        A.PARENT_ITEM_ID,
        B.ITEM_ID AS mycol
    FROM ITEM_TREE A
        LEFT JOIN ITEM_TREE B 
            ON A.ITEM_ID = B.PARENT_ITEM_ID
) X
    JOIN ITEM_INFO B 
        ON X.ITEM_ID = B.ITEM_ID
WHERE X.mycol IS NULL
ORDER BY X.ITEM_ID DESC;