-- beginner sql
-- section A
select * from customers;
select first_name,last_name,email from customers;
select product_name,price from products;
select first_name,salary from employees;

-- section b
select * from customers
where city = 'buea';

select * from products
where price >100000;

select * from orders
where  status = 'Completed';

select * from employees
where salary between 280000 and 400000;

select * from customers
where country   != 'Cameroon';


-- section c
select country, count(country)  from customers
group by country
order by country desc;

select department_id, 
avg(salary) as avg_sal from employees
group by department_id;



select product_name,price from products
order by price desc;


-- section d 

select country,count(country) from customers 
group by country
having count(country)  >1;


select department_id,avg(salary)
 as avg_sal from employees
group by department_id
having avg(salary) > 300000;


-- section e

select product_name,price as product_price from products
order by price desc
limit 3;




