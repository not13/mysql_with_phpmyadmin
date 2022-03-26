#!/bin/bash

# Create table
mysql -u root -proot sakila < "/docker-entrypoint-initdb.d/sql/sakila-schema.sql"

# Insert data to table
mysql -u root -proot sakila < "/docker-entrypoint-initdb.d/sql/sakila-data.sql"
