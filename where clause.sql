--	WHERE Clause # help filter our data or record 


SELECT * FROM employee_salary
WHERE first_name= 'leslie';

SELECT * FROM employee_salary
WHERE salary <=50000;

SELECT * FROM employee_demographics
WHERE gender != 'Female';

SELECT * FROM employee_demographics
WHERE birth_date >='1985-01-01';

#logical operators
SELECT * FROM employee_demographics
WHERE birth_date >='1985-01-01'
AND gender = 'male';


SELECT * FROM employee_demographics
WHERE birth_date >='1985-01-01'
OR gender = 'male';


SELECT * FROM employee_demographics
WHERE ( first_name='Leslie' AND age = 44) OR age > 55;

# like statement 

SELECT * FROM employee_demographics
WHERE first_name LIKE 'a___%';


SELECT * FROM employee_demographics
WHERE birth_date LIKE '1985%'




