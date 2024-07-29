SELECT deptno
FROM dept
EXCEPT
SELECT deptno
FROM emp;

SELECT deptno
FROM dept
WHERE deptno NOT IN (SELECT deptno FROM emp);


SELECT d.deptno
FROM dept d
WHERE NOT exists(SELECT 1 FROM emp e WHERE e.deptno = d.deptno)