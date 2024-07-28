SELECT coalesce(comm, 0) AS comm
FROM emp;

SELECT CASE
           WHEN comm IS NOT NULL THEN comm
           ELSE 0
           END
FROM emp;
