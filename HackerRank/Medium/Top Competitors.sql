SELECT 
    D.hacker_id, 
    D.name
FROM Submissions A
    JOIN Challenges B 
        ON A.challenge_id = B.challenge_id
    JOIN Difficulty C 
        ON B.difficulty_level = C.difficulty_level
    JOIN Hackers D 
        ON A.hacker_id = D.hacker_id
WHERE A.score = C.score
GROUP BY D.hacker_id, D.name
HAVING COUNT(DISTINCT B.challenge_id) > 1
ORDER BY COUNT(DISTINCT B.challenge_id) DESC, D.hacker_id;