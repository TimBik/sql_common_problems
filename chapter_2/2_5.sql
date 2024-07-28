SELECT ename, sal, comm
FROM (SELECT ename,
             sal,
             comm,
             CASE
                 WHEN comm IS NULL THEN 0
                 ELSE 1
                 END AS is_null
      FROM emp) x
ORDER BY is_null desc, comm;


SELECT ename, sal, comm
FROM (SELECT ename,
             sal,
             comm,
             CASE
                 WHEN comm IS NULL THEN 0
                 ELSE 1
                 END AS is_null
      FROM emp) x
ORDER BY is_null desc, comm desc;


SELECT ename, sal, comm
FROM (SELECT ename,
             sal,
             comm,
             CASE
                 WHEN comm IS NULL THEN 0
                 ELSE 1
                 END AS is_null
      FROM emp) x
ORDER BY is_null, comm;


SELECT ename, sal, comm
FROM (SELECT ename,
             sal,
             comm,
             CASE
                 WHEN comm IS NULL THEN 0
                 ELSE 1
                 END AS is_null
      FROM emp) x
ORDER BY is_null, comm desc;