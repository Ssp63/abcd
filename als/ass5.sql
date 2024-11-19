CREATE DATABASE company; 
USE company;


CREATE TABLE employees ( id INT PRIMARY KEY,
first_name VARCHAR(50), 
last_name VARCHAR(50), 
salary DECIMAL(10, 2),
 hire_date DATE
);

INSERT INTO employees (id, first_name, last_name, salary, hire_date) VALUES (1, 'Aditi', 'Sharma', 60000, '2020-01-15'),
(2, 'Sneha', 'Singh', 75000, '2019-03-22'),

(3, 'Pooja', 'Patel', 50000, '2021-07-30'),

(4, 'Neha', 'Iyer', 80000, '2018-05-12'),

(5, 'Ananya', 'Nair', 70000, '2022-09-10');

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees; 
select * from employees;

SELECT UPPER(last_name) AS uppercase_last_name FROM employees;

SELECT COUNT(first_name) AS total_employees FROM employees;

SELECT AVG(salary) AS average_ FROM employees;

select round(salary) as r from employees;
