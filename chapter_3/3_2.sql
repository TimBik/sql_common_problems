SELECT *
FROM emp e,
     dept d
WHERE e.deptno = d.deptno;


SELECT e.ename, d.loc
FROM emp e,
     dept d
WHERE e.deptno = d.deptno
  AND e.deptno = 10;


SELECT e.ename, d.loc
FROM emp e
         INNER JOIN dept d
                    ON (e.deptno = d.deptno)
WHERE e.deptno = d.deptno
  AND e.deptno = 10;