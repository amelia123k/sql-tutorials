-- windows functions allow us to look at a partitions or a group but the each keep their own unique rows in the outputs

select dem.first_name,dem.last_name,gender , avg(salary) over(partition by gender)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id = sal.employee_id
 ;
 
 select dem.first_name,dem.last_name,gender , salary , sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem 
join employee_salary sal
on dem.employee_id = sal.employee_id
 ;
 
 
 
 select dem.first_name,dem.last_name,gender , salary , 
 row_number() over(partition by gender order by salary desc) ,
 rank() over(partition by gender order by salary desc),
  dense_rank() over(partition by gender order by salary desc)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id = sal.employee_id
 ;