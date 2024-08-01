TRUNCATE emp_bonus;

INSERT INTO emp_bonus (empno, received, type)
VALUES (7934, '17-MAR-2005', 1),
       (7934, '15-FEB-2005', 2);

SELECT *
FROM emp_bonus;


SELECT deptno,
       sum(sal)   AS total_sal,
       sum(bonus) AS total_bonus
FROM (SELECT e.empno,
             e.ename,
             e.sal,
             e.deptno,
             e.sal * CASE
                         WHEN eb.type = 1 THEN .1
                         WHEN eb.type = 2 THEN .2
                         WHEN eb.type = 3 THEN .3
                         ELSE 1 END
                 AS bonus
      FROM emp e,
           emp_bonus eb
      WHERE e.empno = eb.empno
        AND e.deptno = 10) x
GROUP BY deptno;

SELECT e.empno,
       e.ename,
       e.sal,
       e.deptno,
       e.sal * CASE
                   WHEN eb.type = 1 THEN .1
                   WHEN eb.type = 2 THEN .2
                   WHEN eb.type = 3 THEN .3
                   ELSE 0
           END AS bonus
FROM emp e,
     emp_bonus eb
WHERE e.empno = eb.empno
  AND e.deptno = 10;



SELECT e.empno,
       e.ename,
       e.sal,
       e.deptno,
       (e.sal * CASE
                    WHEN eb.type = 1 THEN .1
                    WHEN eb.type = 2 THEN .2
                    WHEN eb.type = 3 THEN .3
                    ELSE 0 END)
           AS bonus
FROM emp e
         LEFT OUTER JOIN emp_bonus eb ON (e.empno = eb.empno)
WHERE e.deptno = 10;


SELECT deptno,
       sum(distinct sal),
       sum(bonus)
           AS total_bonus
FROM (SELECT e.empno,
             e.ename,
             e.sal,
             e.deptno,
             (e.sal * CASE
                          WHEN eb.type = 1 THEN .1
                          WHEN eb.type = 2 THEN .2
                          WHEN eb.type = 3 THEN .3
                          ELSE 0 END)
                 AS bonus
      FROM emp e
               LEFT OUTER JOIN emp_bonus eb ON (e.empno = eb.empno)
      WHERE e.deptno = 10) x
GROUP BY deptno;


SELECT d.deptno,
       d.total_sal,
       sum(e.sal * CASE
                       WHEN eb.type = 1 THEN .1
                       WHEN eb.type = 2 THEN .2
                       WHEN eb.type = 3 THEN .3
                       ELSE 0 END) AS total_bonus
FROM emp e,
     emp_bonus eb,
     (select deptno, sum(sal) AS total_sal
      FROM emp
      WHERE deptno = 10
      GROUP BY deptno) d
WHERE d.deptno = e.deptno
  AND e.empno = eb.empno
GROUP BY d.deptno, d.total_sal;