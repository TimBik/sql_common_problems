CREATE TABLE dept
(
    deptno INTEGER PRIMARY KEY,
    dname  VARCHAR(31),
    loc    VARCHAR(31)
);

CREATE TABLE emp
(
    empno    INTEGER PRIMARY KEY,
    ename    VARCHAR(31),
    job      VARCHAR(31),
    mgr      INTEGER,
    hiredate DATE,
    sal      INTEGER,
    comm     INTEGER,
    deptno   INTEGER,
    FOREIGN KEY (mgr) REFERENCES emp (empno),
    FOREIGN KEY (mgr) REFERENCES emp (empno)
);


INSERT INTO dept (deptno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK'),
       (20, 'RESEARCH', 'DALLAS'),
       (30, 'SALES', 'CHICAGO'),
       (40, 'OPERATIONS', 'BOSTON');

INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH', 'CLERK', 7902, '2005-12-17', 800, NULL, 20),
       (7499, 'ALLEN', 'SALESMAN', 7698, '2006-02-20', 1600, 300, 30),
       (7521, 'WARD', 'SALESMAN', 7698, '2006-02-22', 1250, 500, 30),
       (7566, 'JONES', 'MANAGER', 7839, '2006-04-02', 2975, NULL, 20),
       (7654, 'MARTIN', 'SALESMAN', 7698, '2006-09-28', 1250, 1400, 30),
       (7698, 'BLAKE', 'MANAGER', 7839, '2006-05-01', 2850, NULL, 30),
       (7782, 'CLARK', 'MANAGER', 7839, '2006-06-09', 2450, NULL, 10),
       (7788, 'SCOTT', 'ANALYST', 7566, '2007-12-09', 3000, NULL, 20),
       (7839, 'KING', 'PRESIDENT', NULL, '2006-11-17', 5000, NULL, 10),
       (7844, 'TURNER', 'SALESMAN', 7698, '2006-09-08', 1500, 0, 30),
       (7876, 'ADAMS', 'CLERK', 7788, '2008-01-12', 1100, NULL, 20),
       (7900, 'JAMES', 'CLERK', 7698, '2006-12-03', 950, NULL, 30),
       (7902, 'FORD', 'ANALYST', 7566, '2006-12-03', 3000, NULL, 20),
       (7934, 'MILLER', 'CLERK', 7782, '2007-01-23', 1300, NULL, 10);


CREATE TABLE t1
(
    id INTEGER PRIMARY KEY
);

INSERT INTO t1 (id)
SELECT 1;

CREATE TABLE t10
(
    id INTEGER PRIMARY KEY
);
INSERT INTO t10 (id)
SELECT generate_series(1, 10);

CREATE TABLE t100
(
    id INTEGER PRIMARY KEY
);
INSERT INTO t100 (id)
SELECT generate_series(1, 100);

CREATE TABLE t500
(
    id INTEGER PRIMARY KEY
);
INSERT INTO t500 (id)
SELECT generate_series(1, 500);


CREATE TABLE emp_bonus
(
    empno    INTEGER PRIMARY KEY,
    received DATE,
    type     INTEGER
);

INSERT INTO emp_bonus (empno, received, type)
VALUES (7369, '14-MAR-2005', 1),
       (7900, '14-MAR-2005', 2),
       (7788, '14-MAR-2005', 3);
