/*
- 전체 스코어: 모든 챌린지에서 max값의 합 그니까, 해커별, 챌린지별, max값을 구해야함
- 그렇게 나온 score의 합을 구해야함 
*/
SELECT
    A.hacker_id,
    B.name,
    SUM(A.max_score) AS total_score 
FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) A
JOIN Hackers B  
    ON A.hacker_id = B.hacker_id
GROUP BY A.hacker_id, B.name
HAVING SUM(A.max_score) != 0
ORDER BY total_score DESC, A.hacker_id ASC;

