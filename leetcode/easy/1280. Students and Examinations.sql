WITH SubCount AS(
    SELECT
        student_id,
        subject_name,
        COUNT(subject_name) AS Attend
    FROM Examinations
    GROUP BY student_id, subject_name
    ORDER BY student_id, subject_name
)

SELECT
 A.student_id, 
 A.student_name,
 B.subject_name,
 CASE
    WHEN C.Attend IS NULL THEN 0
    ELSE C.Attend
END AS attended_exams
FROM Students A
    CROSS JOIN Subjects B
        LEFT JOIN SubCount C ON A.student_id = C.student_id AND B.subject_name = C.subject_name
GROUP BY A.student_id, B.subject_name
ORDER BY A.student_id, B.subject_name