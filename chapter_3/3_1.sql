SELECT ename AS ename_and_dname, deptno
FROM emp
WHERE deptno = 10
UNION ALL
SELECT '----------', NULL
FROM t1
UNION ALL
SELECT dname, deptno
FROM dept;


SELECT deptno
FROM dept
UNION
SELECT deptno
FROM emp;