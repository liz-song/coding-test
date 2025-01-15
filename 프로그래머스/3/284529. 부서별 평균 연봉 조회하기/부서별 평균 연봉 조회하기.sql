SELECT
    A.DEPT_ID,
    A.DEPT_NAME_EN,
    ROUND(AVG(SAL),0) AS AVG_SAL
FROM HR_DEPARTMENT A
JOIN HR_EMPLOYEES B 
    ON A.DEPT_ID = B.DEPT_ID
GROUP BY A.DEPT_ID
ORDER BY AVG_SAL DESC;