-- CTEs  common table expression this allow you to define a subquery block where you can reference within the main query

with cte_example as
(
select gender ,avg(salary) avg_sal , max(salary),min(salary),count(salary) 
from employee_demographics dem 
join employee_salary sal
on dem.employee_id = sal.employee_id 
group by gender )

select avg_sal from cte_example; 



select avg(avg_sal)
from ( select gender ,avg(salary) (avg_sal , max(salary),min(salary),count(salary) 
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id 
group by gender )

example_subquery;



with cte_example as
(
select gender , employee_id ,birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
cte_example2 as 
(
select salary ,employee_id
from employee_salary
where salary > 50000
)
select *
 from cte_example
join cte_example2 
on cte_example.employee_id = cte_example2.employee_id











