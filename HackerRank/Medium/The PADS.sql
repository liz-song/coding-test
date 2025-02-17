/*
1. OCCPATION의 모든 리스트의 이름 알파벳 순서대로, 그 다음에 괄호 안에 직업 첫 글자 들어가야함 (이거 전체 테이블 하나 만들고)
2. OCCUPATION 내에서 모든 발생한 각각의 직업들의 수를 써주기 
*/

SELECT
    CONCAT(Name, '(', LEFT(Occupation,1), ')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT
    CONCAT('There are a total of ', 
            COUNT(*), 
            ' ', 
            LOWER(Occupation),
            's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
