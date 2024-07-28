SELECT ename, sal, job, comm
FROM emp
ORDER BY CASE
             WHEN job = 'SALESMAN' THEN comm
             ELSE sal
             END;

SELECT ename,
       sal,
       job,
       comm,
       CASE
           WHEN job = 'SALESMAN' THEN comm
           ELSE sal
           END AS ordered
FROM emp
ORDER BY ordered;