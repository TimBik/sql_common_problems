SELECT *
FROM emp_bonus;

SELECT e.ename, d.loc
FROM emp e,
     dept d
WHERE e.deptno = d.deptno;

SELECT e.ename, d.loc, eb.received
FROM (emp e join dept d
      ON (e.deptno = d.deptno))
         LEFT JOIN emp_bonus eb
                   ON (e.empno = eb.empno)
ORDER BY 2;

SELECT e.ename,
       d.loc,
       (SELECT eb.received FROM emp_bonus eb WHERE eb.empno = e.empno) AS received
FROM emp e,
     dept d
WHERE e.deptno = d.deptno
ORDER BY 2;
