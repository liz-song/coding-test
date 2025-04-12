/*
- 총 받은 request 중 confirmed 된 rate 구하기. 만약 confirmed 가 하나도 없다면 0
- 출력: user_id, confirmation_id(소수점 2자리까지)
- user_id별로 action 갯수 센 다음, confirm의 갯수로 나눠 줘야 함
- Signups는 있지만 confirmation에 없는 경우 ROUND(0,2) 출력ㅁ
- Signups에 있고, confirmation에 timeout 밖에 없는 경우 ROUND(0,2) 출력
- Signsup에 있고, confirmation에 confimed 있으면 전체 카운팅 한 것에서 그 갯수 나눠주기 
- Signups와 confirmations LEFT JOIN 한 다음, 
- IFNULL로 예외적인 것들 다 0처리. user_id별로 COUNT(action) 구하고, COUNT(action) WHERE action = 'confirmed' 인 것 나눈 숫자로. 
*/

SELECT
    A.user_id,
    ROUND(
        IFNULL(SUM(CASE WHEN B.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / COUNT(B.action),0),2)
    AS confirmation_rate
FROM Signups A
    LEFT JOIN Confirmations  B 
        ON A.user_id = B.user_id
GROUP BY A.user_id