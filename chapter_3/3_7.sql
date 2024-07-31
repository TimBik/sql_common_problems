DROP VIEW IF EXISTS v;

CREATE VIEW v
AS
SELECT *
FROM emp
WHERE deptno != 10
UNION ALL
SELECT *
FROM emp
WHERE ename = 'WARD';

SELECT *
FROM v;

SELECT empno,
       ename,
       job,
       mgr,
       hiredate,
       sal,
       comm,
       deptno,
       count(*) AS cnt
FROM v
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
EXCEPT
SELECT empno,
       ename,
       job,
       mgr,
       hiredate,
       sal,
       comm,
       deptno,
       count(*) AS cnt
FROM emp
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
UNION ALL
SELECT empno,
       ename,
       job,
       mgr,
       hiredate,
       sal,
       comm,
       deptno,
       count(*) AS cnt
FROM emp
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno
EXCEPT
SELECT empno,
       ename,
       job,
       mgr,
       hiredate,
       sal,
       comm,
       deptno,
       count(*) AS cnt
FROM v
GROUP BY empno, ename, job, mgr, hiredate, sal, comm, deptno;