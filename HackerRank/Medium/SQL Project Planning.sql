/*
- 만약에 end_date가 연속적이라면, 같은 프로젝트임. 사만다는 다른 프로젝트의 총 갯수를 세고 싶음
- 프로젝트 하나 끝내기 위해 걸린 시간 오름차순 순서대로 start/end_date 써야함 
- 같은 완료 날짜에 두 개 이상의 프로젝트가 있다면, start_date 오름차순으로 정렬. 
- left join으로 WHERE조건(enddate=startdate 이어야 함)걸어서 조인하고, A기준으로 일단 오름차순
*/
WITH TaskGroups AS (
    SELECT 
        Task_ID,
        Start_Date,
        End_Date,
        LAG(End_Date) OVER (ORDER BY Start_Date) AS Prev_End_Date
    FROM Projects
),
ProjectGroups AS (
    SELECT 
        Task_ID,
        Start_Date,
        End_Date,
        SUM(CASE 
                WHEN Prev_End_Date = Start_Date THEN 0 ELSE 1 
            END) OVER (ORDER BY Start_Date) AS Project_ID
    FROM TaskGroups
)
SELECT 
    Start_Date,
    End_Date
FROM (
    SELECT 
        MIN(Start_Date) AS Start_Date, 
        MAX(End_Date) AS End_Date,
        DATEDIFF(MAX(End_Date), MIN(Start_Date)) AS CompletionDays
    FROM ProjectGroups
    GROUP BY Project_ID
) X
ORDER BY X.CompletionDays ASC, X.Start_Date ASC;
