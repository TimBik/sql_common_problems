SELECT d.*
FROM dept d
         LEFT OUTER JOIN emp e
                         ON (d.deptno = e.deptno)
WHERE e.deptno IS NULL;


SELECT e.ename, e.deptno emp_deptno, d.*
FROM dept d
         LEFT OUTER JOIN emp e
                         ON (d.deptno = e.deptno);