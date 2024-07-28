CREATE ROLE chef WITH
    LOGIN
    NOSUPERUSER
    CREATEDB
    NOCREATEROLE
    INHERIT
    REPLICATION
    CONNECTION LIMIT -1
    PASSWORD 'chefsecrets';

CREATE DATABASE collection_sql_recipes;

ALTER DATABASE collection_sql_recipes OWNER TO chef;