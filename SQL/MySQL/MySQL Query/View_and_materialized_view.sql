/* Giving complete access of the table/database is dangerouse and may be not required we make temperary
table with only required table to be viewed. We use the concept of view for that */

use college;

select * from student;

create view view1 as 
select id, name, grade
from student;

select * from view1;

update view1
set grade = "T"
where grade = "O";

-- Types of view:- 
-- 1) Simple View - Logical table created from single base table 
-- 2) Complex View - Logical table created from more than 1 table
-- 3) Materialized View - Like a physical table that stores query o/p or intermediate table. It holds data.

create table materialized_view AS
select count(id), city
from student 
group by city;

select * from materialized_view;


drop view view1;
drop database college;