/*
- 회사 코드, founder_name, 리드 매니저 수, 시니어 매니저 수, 총 매니저 수, 총 임원 수
- 회사코드 기준으로 오름차순 
- 중복 레코드 있음(=distinct 필요)
- 회사 코드 스트링이라 numeric으로 바꿔줘야 함
- 직원들 수 세려면 일단 모든 테이블을 조인하긴 해야함. 모두 조인해서 수 세주기
*/

SELECT 
    A.company_code,
    A.founder,
    COUNT(DISTINCT B.lead_manager_code),
    COUNT(DISTINCT C.senior_manager_code),
    COUNT(DISTINCT D.manager_code),
    COUNT(DISTINCT E.employee_code)
FROM Company A
    JOIN Lead_Manager B
        ON A.company_code = B.company_code
    JOIN Senior_Manager C
        ON A.company_code = C.company_code AND B.lead_manager_code = C.lead_manager_code
    JOIN Manager D
        ON A.company_code = D.company_code AND B.lead_manager_code = D.lead_manager_code AND C.senior_manager_code = D.senior_manager_code
    JOIN Employee E
        ON A.company_code = E.company_code AND B.lead_manager_code = E.lead_manager_code AND C.senior_manager_code = E.senior_manager_code AND D.manager_code = E.manager_code
GROUP BY A.company_code, A.founder