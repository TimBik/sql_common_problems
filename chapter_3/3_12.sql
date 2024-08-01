SELECT ename, comm, coalesce(comm,0)
FROM emp
WHERE coalesce(comm, 0) < (SELECT comm FROM emp WHERE ename = 'WARD');