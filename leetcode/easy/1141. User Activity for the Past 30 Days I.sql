/*
- 2019-06-27 ~ 2019-7-27의 DAU를 구하라. 
- active의 정의: 해당 날짜에 적어도 한 번의 activity를 했을 경우
- 기간(2019-06-27 ~ 2019-7-27)내의 activity_date 그룹 별로 distinct한 user_id가 몇 개인가?
*/

SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date

