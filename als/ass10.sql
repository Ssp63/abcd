CREATE DATABASE T4;
 
USE T4;

CREATE TABLE t4_batch (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),	marks INT,	branch VARCHAR(50),	city VARCHAR(50), age INT
);
INSERT INTO t4_batch (name, marks, branch, city, age) VALUES ('Vidyadhar', 85, 'Computer Science', 'Mumbai', 21),
('Manali', 90, 'Mechanical', 'Pune', 22),
('Aditya', 78, 'Electronics', 'Delhi', 20),
('Om', 88, 'Civil', 'Bangalore', 23),
('Vinit', 92, 'Computer Science', 'Chennai', 21),
('Rakesh', 75, 'Information Technology', 'Hyderabad', 24),
('Ameya', 95, 'Mechanical', 'Ahmedabad', 22),
('Aryan', 80, 'Electronics', 'Kolkata', 19),
('Rucha', 87, 'Civil', 'Jaipur', 21),
('Kranti', 70, 'Computer Science', 'Lucknow', 20),
('Eliza', 93, 'Information Technology', 'Surat', 22),
('Shreyash', 82, 'Mechanical', 'Nagpur', 23),
('Harsh', 89, 'Civil', 'Indore', 21),
('Shashank', 91, 'Electronics', 'Vadodara', 20),
('Anshul', 76, 'Computer Science', 'Visakhapatnam', 22); DELIMITER //
CREATE PROCEDURE GetStudentsByBranch(IN student_branch VARCHAR(50)) BEGIN
SELECT * FROM t4_batch WHERE branch = student_branch;	END
// DELIMITER ;
CALL GetStudentsByBranch('Computer Science');