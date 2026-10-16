# limits & alias 

select * from employee_demographics
order by age asc 
limit 4;

select * from employee_demographics
order by age asc 
limit 3,1;

#alaising  is just a way to change the name of the column 
select gender, avg(age) as avg_age from employee_demographics
group by gender 
having avg_age > 40