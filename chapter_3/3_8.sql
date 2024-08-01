SELECT e.ename, d.loc
FROM emp e,
     dept d
WHERE e.deptno = 10;


SELECT e.ename, d.loc
FROM emp e,
     dept d
WHERE e.deptno = 10
  AND e.deptno = d.deptno;