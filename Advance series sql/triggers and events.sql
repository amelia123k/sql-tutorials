-- triggers and events  
-- A trigger is a block of code that execute automatically when an events takes place on a specific table

select * from employee_demographics;


select * from employee_salary

delimiter $$ 
create trigger emploemployee_demographicsemployee_demographicsyee_insert
after insert on employee_salary
for each row 
begin
insert into employee_demographics(employee_id,first_name,last_name)
values(new.employee_id,new.first_name,new.last_name);
end $$

delimiter ; 

insert into employee_salary (employee_id,first_name,last_name,occupation,salary)
values('13','Ayuk','Amelia', 'Data Analyst','1500000');


-- events it takes place when it is scheduled

select * from employee_demographics;
delimiter $$
create event delete_retrie
on schedule every 30 second 
do
begin 
delete 
	from employee_demographics    
	where age  >= 60;
end $$
delimiter ;




