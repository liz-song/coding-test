/*
- 각 날짜에 팔린 각기 다른 물품들의 갯수와 이름 출력 
- 팔린 물품들은 사전대로(알파벳 순서대로) 정렬되어있음
- sell_date 기준으로 오름차순
- Group_concat 사용하면 항목들 문자열로 만들기 가능 
- sell_date으로 group by 해서 distinct한 product를 group concat, num_sold는 distinct한 product 카운트 
*/

SELECT sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date