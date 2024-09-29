use college;

-- dept will be the parent table 
create table if not exists dept(
	id int primary key,
    name varchar(50)
);

-- teacher table will be the child table bcoz it is using foreign key
create table if not exists teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
);

-- Cascading example 
create table if not exists teacher0(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade
    on delete cascade
);

insert into dept
values
(101,"cse"),(102,"ise"),(103,"aids");

insert into teacher
values
(1,"Rahul",101),(2,"Sumit",101),(3,"Rajat",102),(4,"Siraj",103);

insert into teacher0
values
(1,"Rahul",101),(2,"Sumit",101),(3,"Rajat",102),(4,"Siraj",103);

drop table teacher; -- we havn't cascade this table hence foreign key constraint will come

update dept
set id=104
where id=103;

select * from teacher0;

-- Using Alter
-- 1) add column
alter table dept
add column f_no int not null default 5;

-- 2) modify column
alter table dept
modify column f_no varchar(3);

-- 3) change column (rename and property change)
alter table dept
change f_no fac_no int;

-- 4) Drop column
alter table dept
drop column fac_no;

-- 4) Rename table
alter table teacher0
rename to teacher;

select * from dept;

-- truncate the table data
truncate table student; 
-- it will only delete the data of the table unlike drop which delets the entire table

select * from student;