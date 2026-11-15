-- stored procedures  are  code ehich can be reused over and over again  

select * from employee_salary
where salary >= 50000;

create procedure large_salary()
select * from employee_salary
where salary >= 50000;
call large_salary();

delimiter  $$
	create procedure large_salary1()
    begin 
		select * from employee_salary
		where salary >= 50000;
		select * from employee_salary
		where salary >= 10000;
	end $$
delimiter ;

call large_salary1();

-- parameters are variables that are passed as an input into a stored procedure and allow the stored procddure to accept an input value and placed it into the code 
delimiter  $$
	create procedure large_salary2(emplyee_id int)
    begin 
		select  salary  from employee_salary
		where employee_id = emplyee_id;
	end $$
delimiter ;
 call  large_salary2(2)
