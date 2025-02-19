/*
- earnings = salary * months, maximum total earning = max(all employee earning)
- max earning과 해당 max earning값 가지고 있는 직원의 수 구하기 
- 값 사이에 공백 있이 출력 
풀이: 먼저 각각의 earning값 출력하는 테이블 만들고, 거기서 max값 출력, 그리고 그 수 가진 사람들 where절에서 필터링 */

SELECT
    MAX(X.earning),
    Count(X.employee_id)
FROM(
    SELECT
        employee_id,
        months * salary AS earning
    FROM Employee
    ) X
WHERE X.earning = (SELECT MAX(earning) FROM (SELECT months * salary AS earning FROM Employee) Y);