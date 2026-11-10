-- sub queries  is basically just a query within another query 

select *
 from employee_demographics
 where employee_id in 
 (select employee_id from 
 employee_salary 
 where dept_id =1);



 
 select first_name,salary,
(select avg(salary)from employee_salary) as avg_salary
 from employee_salary;


select gender , avg(age),min(age),max(age)
from employee_demographics
group by gender ;

select avg(max_age) from
( select gender , avg(age),min(age),max(age) as max_age,count(age)
from employee_demographics
group by gender) as agg_table





