-- temporary tables this are tables that are visible to the sessions that thet are created in 

create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)

);


select * 
from temp_table;

insert into temp_table
values('AMELIA','AGBOR','7YRS OF SILIENCE');

select * from temp_table;


select * 
from employee_salary;

create temporary table  salary_over_50k
select * from employee_salary
where  salary >= 50000;

select * from salary_over_50k








