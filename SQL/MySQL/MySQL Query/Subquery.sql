use college;
drop table student;
create table if not exists student(
	roll_no int primary key,
    name varchar(50),
	marks int not null,
    grade varchar(1),
    city varchar(20)
);
insert into student
values
(101,"AP",78,"B","Faridabad"),
(102,"BP",88,"A","Pune"),
(103,"CP",91,"O","Delhi"),
(104,"DP",72,"B","Faridabad"),
(105,"EP",69,"C","Pune");
select * from student;

insert into student
values
(106,"FP",78,"B","Delhi");

insert into student
values
(107,"GP",72,"B","Delhi");

-- Using Subquery or nested query

-- Q1) List the students with marks greater than average marks of the class
select avg(marks) from student;

select * from student
where marks >
(select avg(marks) from student);

-- Q2) List students with even roll number
select roll_no from student
where roll_no%2=0;

select * from student
where roll_no in
(select roll_no from student
where roll_no%2=0);

-- Q3) Find the max marks of students from delhi
select max(marks)
from student
where city = "Delhi";

select * from student
where city = "Delhi" and marks = 
(select max(marks) from student
where city = "Delhi");