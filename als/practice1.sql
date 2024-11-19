create database classroom;

use classroom;

create table student(

id int primary key,
name varchar(50),
age int not null

);

drop table student;

create table student(
rollno int primary key,
name varchar(50)
);

select * from student;

insert into student
(rollno, name)
values
(101, "shaz"),
(102, "hvn"),
(103, "ssp");

select * from student;

insert into student values(104, "vighnesh");

create table employee(
id int primary key,
name varchar(50),
salary int );

insert into employee
(id, name, salary)
values
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000) ;

select * from employee;

drop table employee;










-- insert into student values(1,"Shreyash",20);
-- insert into student values(2,"shaz",21);


-- select * from student;
-- insert into student values(3,"pawar",20);
-- insert into student values(4,"hvn",20);

-- select * from student;

-- show databases;
-- show tables;
