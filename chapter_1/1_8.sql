SELECT ename,
       sal,
       CASE
           WHEN sal <= 2000 then 'UNDERPAID'
           WHEN sal >= 4000 then 'OVERPAID'
           ELSE 'OK'
       END AS status
FROM emp;