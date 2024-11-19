create database college;
use college;
create table student(
rollno int primary key ,
name varchar(50),
marks int not null,
grade varchar(1) ,
city varchar(20) 
);

insert into student(rollno , name , marks , grade , city )
values
(101, "anil", 78, "C", "Pune") , 
(102, "bhumika", 93, "A", "Mumbai"),
 (103, "dhruv", 96, "A", "Delhi"),
 (104, "emanuel", 12, "F", "Delhi"),
(105, "chetan", 85, "B", "Mumbai") ,
(106, "farah", 82, "B", "Delhi") ;

select name, marks from student;

select * from student ;

select distinct city from student;

select * from student where marks > 80 ;

select * from student where city = "Mumbai";
