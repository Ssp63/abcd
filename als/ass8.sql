create database ass8 ;
use ass8;
CREATE TABLE employee ( emp_id INT PRIMARY KEY,
 name VARCHAR(50),
job VARCHAR(50),
manager_id INT, 
department VARCHAR(50), 
salary INT );

INSERT INTO employee (emp_id, name, job, manager_id, department, salary) VALUES
(1, 'John Smith', 'CEO', NULL, 'Executive', 150000),
(2, 'Jane Doe', 'CTO', 1, 'Technology', 130000),
(3, 'Michael Brown', 'CFO', 1, 'Finance', 125000),
(4, 'Emily Johnson', 'Senior Developer', 2, 'Technology', 90000),
(5, 'Robert White', 'HR Manager', 1, 'Human Resources', 85000),
(6, 'Linda Green', 'Marketing Manager', 1, 'Marketing', 88000),
(7, 'James Blue', 'Junior Developer', 4, 'Technology', 60000),
(8, 'Samantha Black', 'Financial Analyst', 3, 'Finance', 75000),
(9, 'David Silver', 'Sales Manager', 1, 'Sales', 90000),
(10, 'Patricia Gold', 'Sales Executive', 9, 'Sales', 65000),
(11, 'Thomas Grey', 'HR Assistant', 5, 'Human Resources', 50000),
(12, 'Karen White', 'Intern', 4, 'Technology', 35000);


SELECT job, SUM(salary) AS Total_Salary FROM employee
GROUP BY job;

SELECT manager_id, name, MIN(salary) AS Min_Salary FROM employee
GROUP BY manager_id ORDER BY manager_id;

SELECT *
FROM employee ORDER BY salary ASC;

SELECT *
FROM employee WHERE salary > 16000 ORDER BY department;

CREATE UNIQUE INDEX idx_emp_id ON employee(emp_id);
create index sal on employee(salary);
show index from employee;

CREATE CLUSTERED INDEX idx_salary ON employee(salary);
