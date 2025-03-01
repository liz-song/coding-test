/*
- 한 과정(end - start)을 하는데 드는 각 머신의 평균 시간을 구하기, 소수점 셋째자리까지 출력, 순서는 상관없음
- machine_id별로, process id가 같은 것 끼리 activity type의 차를 구해야함 
- 그런 다음 걔네들의 AVG 구해줘야 함 
*/
SELECT 
    X.machine_id,
    ROUND(AVG(X.end_time-X.start_time),3) AS Processing_time
FROM(
    SELECT
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time,
        MIN(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time
    FROM Activity
    GROUP BY machine_id, process_id 
) X
GROUP BY X.machine_id