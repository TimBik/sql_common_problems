SELECT ename, job
FROM emp
WHERE deptno in (10, 20)
  AND (ename LIKE '%I%' OR job LIKE '%ER');