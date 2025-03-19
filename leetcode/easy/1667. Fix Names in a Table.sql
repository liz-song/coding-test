# Write your MySQL query statement below
/*
- 첫번째 글자만 대문자고 나머지는 소문자로
- 정렬 순서는 user_id
*/
SELECT
    user_id,
    CONCAT(
    UPPER(LEFt(name,1)),
    LOWER(SUBSTRING(name,2))
    )  AS name 
FROM Users
ORDER BY user_id