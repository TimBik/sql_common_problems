DROP VIEW IF EXISTS v;


CREATE VIEW v
AS
SELECT ename, job, sal
FROM emp
WHERE job = 'CLERK';


SELECT *
FROM v;

SELECT e.empno, e.ename, e.job, e.sal, e.deptno
FROM emp e,
     v
WHERE e.ename = v.ename
  AND e.job = v.job
  AND e.sal = v.sal;

SELECT e.empno, e.ename, e.job, e.sal, e.deptno
FROM emp e
         INNER JOIN v
                    ON (e.ename = v.ename
                        AND e.job = v.job
                        AND e.sal = v.sal);


SELECT empno, ename, job, sal, deptno
FROM emp
WHERE (ename, job, sal) in (SELECT ename, job, sal
                            FROM emp
                            intersect
                            SELECT ename, job, sal
                            FROM v);