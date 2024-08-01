SELECT d.deptno, d.dname, e.ename
FROM dept d
         LEFT OUTER JOIN emp e
                         ON (d.deptno = e.deptno);



SELECT 1111,
       'YODA',
       'JEDI',
       NULL,
       hiredate,
       sal,
       comm,
       null
FROM emp
WHERE ename = 'KING';


INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT 1111,
       'YODA',
       'JEDI',
       NULL,
       hiredate,
       sal,
       comm,
       null
FROM emp
WHERE ename = 'KING';

SELECT *
FROM emp;

SELECT d.deptno, d.dname, e.ename
FROM dept d
         RIGHT OUTER JOIN emp e
                          ON (d.deptno = e.deptno);


SELECT d.deptno, d.dname, e.ename
FROM dept d
         FULL OUTER JOIN emp e
                         ON (d.deptno = e.deptno);


SELECT d.deptno, d.dname, e.ename
FROM dept d
         LEFT OUTER JOIN emp e
                         ON (d.deptno = e.deptno)
UNION
SELECT d.deptno, d.dname, e.ename
FROM dept d
         RIGHT OUTER JOIN emp e
                          ON (d.deptno = e.deptno);
