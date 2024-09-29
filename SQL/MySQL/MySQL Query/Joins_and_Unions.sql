use college;
create table course(
	id int primary key,
    name varchar(50)
);
create table student(
	id int primary key,
    name varchar(50),
    dept varchar(50)
);
insert into course
values
(101,"coa"),(102,"ml"),(103,"os");
insert into student
values
(102,"Aryan","AI&DS"),(103,"Sumit","ECE"),(104,"Ravi","AIML"),(105,"Ashwath","AI&DS");

select * from student;
select * from course;

-- JOINS -->  1) Inner Joins 2) Outer Joins 3) Self Joins
-- 1) Inner Join --> It is similar to intersection. Join the table and give common data
select *
from student as s
inner join course as c
on s.id=c.id;

-- nicknaming/aliasing it is similar to python as--> student as s

-- 2) Outer Join --> It is similar to union
-- 2.1.1) Left outer join --> it give the common data of both table as well as all the data from left table
select *
from student as s
left join course as c
on s.id=c.id;
-- 2.1.2) Left exclusive join --> it will not give the common data of both table but all the data from left table
select *
from student as s
left join course as c
on s.id=c.id
where c.id is null;

-- 2.2.1) Right outer join --> it give the common data of both table as well as all the data from right table
select *
from student as s
right join course as c
on s.id=c.id;
-- 2.2.2) Right exclusive join --> it will not give the common data of both table but all the data from right table
select *
from student as s
right join course as c
on s.id=c.id
where s.id is null;

-- 2.3) Full join --> it give the common data of both table
select *
from student as s
left join course as c
on s.id=c.id
union
select *
from student as s
right join course as c
on s.id=c.id;

-- union --> It will give the union of the two tables without duplicates.
-- union all --> It will give the union of the two tables with duplicates.

-- 3) Self join --> joining same tables
create database if not exists Company;
use Company;
create table emp(
	id int primary key,
    name varchar(50),
    m_id int
);
insert into emp
values
(101,"Aryan",null),(102,"Ravi",101),(103,"Inthiyaz",101),(104,"Ashwath",102),(105,"Umesh",103);
select * from emp;

select a.name as Employee, b.name as Manager
from emp as a
join emp as b
on a.m_id=b.id;

