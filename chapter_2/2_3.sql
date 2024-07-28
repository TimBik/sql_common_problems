SELECT ename, job
FROM emp
ORDER BY substr(job, length(job) - 1);
