#GROUP BY shows only the unique catergories
SELECT * FROM 
employee_demographics;

SELECT gender, AVG(age), MAX(age),min(age),count(age) FROM 
employee_demographics
GROUP BY gender;


SELECT occupation,salary FROM 
employee_salary
GROUP BY occupation, salary ;

#order by sort either from asc or desc order 

SELECT * FROM 
employee_demographics
ORDER BY  gender ,age asc ;

SELECT * FROM 
employee_demographics
ORDER BY  gender ,age desc ;



