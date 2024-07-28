SELECT *
FROM
    (
        SELECT  sal AS salary, comm AS commission
        FROM EMP
    ) x
where salary < 5000;