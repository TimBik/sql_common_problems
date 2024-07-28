#!/bin/bash

psql -U postgres -d postgres -f db_init.sql;
PGPASSWORD='chefsecrets' psql -U chef -d collection_sql_recipes -f data_init.sql;
