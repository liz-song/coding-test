/*
- 적어도 5명의 직원이 있는 매니저의 이름 출력 
- 셀프 조인해서,  name이 manager ID에 5개 이상 존재하는 사람 찾아야함(having count사용해서) 
*/

SELECT B.name
FROM Employee A
    JOIN Employee B ON A.managerId = B.id
GROUP BY B.id, B.name
HAVING COUNT(A.id) >= 5;