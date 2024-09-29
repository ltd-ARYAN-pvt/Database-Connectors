create database if not exists college;
use college;
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

-- Select Demonstration 
-- 1) Select all
select * from student;

-- 2) Select particular columns
select name,city from student;

-- 3) Selecting distinct values
select distinct city from student;

-- 4) using clauses with select
-- 4.1.1) where clause with operators
select * from student where marks>80;
select * from student where city="Faridabad";
select * from student where marks-10<70;
select * from student where marks>75 and city="Faridabad";
select * from student where marks>80 or city="Faridabad";

-- 4.1.2) where clause with (between)
select * from student where marks between 80 and 95;

-- 4.1.3) where clause with (in)
select * from student where city in ("Faridabad","Delhi");

-- 4.1.4) where clause with (not in)
select * from student where city not in ("Faridabad","Delhi");

-- 4.2) limit clause --> it is similar to df.head()
select * from student limit 3;
select * from student where marks>80 or city="Faridabad" limit 2;

-- 4.3) order by clause
select * from student
order by marks asc;
select * from student
order by grade desc;

-- 4.4) group by clause
select city,count(roll_no)
from student
group by city;

select grade,count(roll_no)
from student
group by grade
order by grade desc;

-- 4.5) Having clause --> Same as where but use after group by clauses
select city, max(marks)
from student
group by city
having max(marks)>80;

-- 5) using Aggregate functions with select
-- max(),min(),avg()
select marks from student;
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;

-- count()
select count(name) from student where marks>80;


/* General Order
select col_name(s)
from table_name
where contidion --> puts condition on rows
group by col(s)
having condition --> puts condition on groups
order by col(s) asc; */