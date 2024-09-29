create database temp1;
drop database temp1;
create database temp;
use temp;
create table student(
	id int primary key,
    name varchar(50),
    age int not null
);
insert into student values(1,"Aryan",21);
insert into student values(2,"Sumit",22);
create database if not exists temp;
show databases;
show tables;
insert into student
values
(5,"RaviA",21),(6,"Umesh BK",23);

select * from student;
create table if not exists teacher(
	id int,
    name varchar(50),
    stu_id int,
    primary key (id),
    foreign key (stu_id) references student(id)
);
insert into teacher
values
(1,"Raja Swami",1),(2,"BK Raja",1),(3,"Vinay TR",3);
select * from teacher;
insert into teacher
values
(4,"Raja Singh",null);
select * from teacher;
drop table if exists teacher;