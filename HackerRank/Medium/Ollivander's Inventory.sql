/*
- non evil(0)인 마법봉이면서, 높은 power와 age를 가진 것 중, 가장 적은 비용으로 구매할 수 있는 마법봉 찾기 
- 같은 종류의 마법봉이면, 가장 저렴한 것만 선택 
- power 내림차순, age 내림차순
- 출력: id, age, coins_needed, and power
1. code로 두 테이블 join
2. age와 power 기준으로 groupby 한 다음에, 가장 적은 coins_needed 골라 출력 그 다음 order by
*/

SELECT
    A.id,
    B.age,
    A.coins_needed,
    A.power
FROM Wands A
    JOIN Wands_Property B 
        ON A.code = B.code
WHERE B.is_evil = 0 
    AND coins_needed = (
        SELECT MIN(coins_needed)
        FROM Wands A2
        JOIN Wands_Property B2
            ON A2.code = B2.code
        WHERE A2.power = A.power 
            AND B.age = B2.age 
    )
ORDER BY A.power DESC, B.age DESC;