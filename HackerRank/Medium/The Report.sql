/* 
출력 해야할 것: Name, Grade, Mark
- 8점 이하로 받은 학생들 이름은 보고 싶지 않음
- grade에 따라 내림차순, Name에 따라 ASC,  grade 8보다 낮으면 Name에 NULL
- 학생들의 성적에 따라 새 컬럼에 숫자 부여 해야함. 
*/
SELECT
    CASE
        WHEN X.Grade < 8 THEN 'NULL'
        ELSE X.Name
    END AS Name,
    X.Grade,
    X.Marks
FROM(

    SELECT
        Name,
        CASE
            WHEN Marks BETWEEN 0 AND 8 THEN 1
            WHEN Marks BETWEEN 9 AND 19 THEN 2
            WHEN Marks BETWEEN 20 AND 29 THEN 3
            WHEN Marks BETWEEN 30 AND 39 THEN 4
            WHEN Marks BETWEEN 40 AND 49 THEN 5
            WHEN Marks BETWEEN 50 AND 59 THEN 6
            WHEN Marks BETWEEN 60 AND 69 THEN 7
            WHEN Marks BETWEEN 70 AND 79 THEN 8
            WHEN Marks BETWEEN 80 AND 89 THEN 9
            WHEN Marks BETWEEN 90 AND 100 THEN 10
        END AS Grade,
        Marks
    FROM Students 
) X
ORDER BY X.Grade DESC, X.Name ASC