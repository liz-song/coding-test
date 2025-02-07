-- 각 회원들마다 리뷰 갯수 카운트해야함(select) -> 그 중 max값 구해야함(where) -> 출력은 회원 이름, 리뷰 텍스트, 리뷰 작성일 -> 정렬은 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순
SELECT 
    A.MEMBER_NAME,
    B.REVIEW_TEXT,
    DATE_FORMAT(B.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE A
JOIN REST_REVIEW B
    ON A.MEMBER_ID = B.MEMBER_ID
WHERE A.MEMBER_ID IN (
    SELECT MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    HAVING COUNT(*) = (
        SELECT MAX(review_count)
        FROM (
            SELECT COUNT(*) AS review_count
            FROM REST_REVIEW
            GROUP BY MEMBER_ID
        ) AS X
    )
)
ORDER BY B.REVIEW_DATE ASC, B.REVIEW_TEXT ASC;
