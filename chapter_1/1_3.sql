SELECT *
FROM emp
WHERE deptno = 10
   OR comm IS NOT NULL
   OR (deptno = 20 AND sal <= 2000)
