/*
- 해커 아이디, 이름, 각 학생에 의해서 만들어진 코딩 챌린지의 갯수를 출력
- 코딩 챌린지 갯수 내림차순으로 정렬, 해커 아이디로 정렬
- 만약에 두 명 이상의 학생이 같은 갯수의 챌린지를 만들었고, 카운트가 만들어진 챌린지의 최대 갯수보다 적으면, 그 학생들은 제외(having으로 필터링)
- Hackers와 Challenges hacker_id로 조인 -> hacker_id별 challenge_id를 카운트해서 출력 
- 제외하는 조건 어떻게 실현할 것인지? -> 카운트를 row_number 매겨서, row_number가 2이상인 challenge_id 가진 애들과 count비교. ㄱ리고 이것이 max와 같은 것만 출력 
*/
WITH ChallengeCounts AS (
    SELECT
        A.hacker_id,
        A.name, 
        COUNT(B.challenge_id) AS challenge_count
    FROM Hackers A
    JOIN Challenges B ON A.hacker_id = B.hacker_id
    GROUP BY A.hacker_id, A.name
),
MaxChallenge AS (
    SELECT MAX(challenge_count) AS max_challenge FROM ChallengeCounts
),
RankedCounts AS (
    SELECT 
        hacker_id,
        name,
        challenge_count,
        COUNT(*) OVER (PARTITION BY challenge_count) AS count_same
    FROM ChallengeCounts
)
SELECT 
    hacker_id, 
    name, 
    challenge_count
FROM RankedCounts
WHERE challenge_count = (SELECT max_challenge FROM MaxChallenge) OR count_same = 1
ORDER BY challenge_count DESC, hacker_id;
