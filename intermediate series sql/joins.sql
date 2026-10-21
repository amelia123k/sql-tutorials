#joins it allows u to find 2 tables or more, togrther if they hv a common column

select * from employee_demographics;

select * from employee_salary;

#inner joins  is going to return rows that are same in both column from both table 

select * from employee_demographics
inner join  employee_salary
on employee_demographics.employee_id =  employee_salary.employee_id;

#outer joins we hv the  left and right outer joins 


select * from employee_demographics
left join  employee_salary
on employee_demographics.employee_id =  employee_salary.employee_id;


select * from employee_demographics
right  join  employee_salary
on employee_demographics.employee_id =  employee_salary.employee_id;

#self join  is a join where u tire the table to itself 

select emp1.employee_id as emp_santa, 
emp1.first_name as first_name_emp,
emp1.last_name as last_name_emp ,

emp2.employee_id as emp_santa, 
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp

 from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 =emp2.employee_id;

# joining multiple tables 

select * from employee_demographics
inner join  employee_salary
on employee_demographics.employee_id =  employee_salary.employee_id
inner join parks_departments
on employee_salary.dept_id =parks_departments.department_id;

select * from parks_departments;

