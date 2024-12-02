CREATE DATABASE employee_db;
GRANT ALL ON *.* to mydbuser@'%' IDENTIFIED BY 'SqlPass123';
USE employee_db;
CREATE TABLE employees (name VARCHAR(20));