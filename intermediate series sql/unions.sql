-- unions allows you to combine row together from separate or same table 
select first_name ,last_name  from employee_demographics
union distinct
select first_name ,last_name from  employee_salary;


select first_name ,last_name, 'old male ' as label
 from employee_demographics
where age > 40 and gender = 'male'
union 

select first_name ,last_name, 'old female' as label
 from employee_demographics
where age > 40  and gender ='female'
union 

select first_name ,last_name , 'highly paid employee' as label
from  employee_salary
where salary > 70000
order by first_name, last_name;