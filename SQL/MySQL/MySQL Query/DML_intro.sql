use college;
-- Update operations

-- sql_safe_update=1 prevents us to update any thing by mistake
set sql_safe_updates=0;

update student
set grade="O"
where grade="U";

select * from student;

update student
set grade="C"
where marks between 60 and 70;

update student
set marks=marks+5;
 
insert into student
values
(106,"Ashwath",12,"F","Gulbarga"),(107,"Hari",0,"F","Mysoor");
 
select * from student;

-- delete operations
delete from student
where grade="F"; 