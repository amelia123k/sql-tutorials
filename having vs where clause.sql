# having vs where 
SELECT gender ,avg(age)  FROM employee_demographics
WHERE age > 40 
group by gender;


#having 
SELECT gender ,avg(age)  FROM employee_demographics
group by gender
having avg(age) > 40 ;


select occupation,avg(salary) from 
employee_salary
where occupation like '%manager%'
group by occupation 
having avg(salary) >75000;
