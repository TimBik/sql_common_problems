TRUNCATE emp_bonus;

INSERT INTO emp_bonus (empno, received, type)
VALUES (7934, '17-MAR-2005', 1),
       (7934, '15-FEB-2005', 2),
       (7839, '15-FEB-2005', 3),
       (7782, '15-FEB-2005', 1);

SELECT *
FROM emp_bonus;

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

SELECT deptno,
       sum(sal)   AS total_sum,
       sum(bonus) AS totat_bonus
FROM (SELECT e.empno,
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
        AND e.deptno = 10) x
GROUP BY deptno;


SELECT deptno,
       sum(DISTINCT sal) AS total_sum,
       sum(bonus)        AS totat_bonus
FROM (SELECT e.empno,
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
        AND e.deptno = 10) x
GROUP BY deptno;


SELECT d.deptno,
       d.total_sal,
       sum(e.sal * CASE
                       WHEN eb.type = 1 THEN .1
                       WHEN eb.type = 2 THEN .2
                       WHEN eb.type = 3 THEN .3
                       ELSE 1 END)
           AS total_bonus
FROM emp e,
     emp_bonus eb,
     (SELECT deptno, sum(sal) as total_sal
      FROM emp
      WHERE deptno = 10
      GROUP BY deptno) d
WHERE e.deptno = d.deptno
  AND e.empno = eb.empno
GROUP BY d.deptno, d.total_sal;