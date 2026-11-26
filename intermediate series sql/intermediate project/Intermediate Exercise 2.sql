-- intermediate in sql
-- section a 

select customers.first_name ,orders.order_id
from customers
inner join orders on customers.customer_id = orders.customer_id;


select * from customers
left join orders on customers.customer_id = orders.customer_id;


SELECT 
    products.product_name,
    order_items.order_id
FROM order_items
RIGHT JOIN products
    ON order_items.product_id = products.product_id;

SELECT e.first_name AS employee,
       m.first_name AS manager
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id;
 
 
 select customers.first_name as customer_names ,
 orders.order_id ,
 products.product_id ,
 order_items.quantity
 from customers 
	 join orders on customers.customer_id = orders.customer_id
	 join order_items on  orders.order_id = order_items.order_id
	 join products on products.product_id = order_items.product_id;
	 
     
     
 select customers.first_name as customer_names , customers.customer_id,
sum(unit_price*quantity) as total_spent
 from customers 
	 join orders on customers.customer_id = orders.customer_id
	 join order_items on  orders.order_id = order_items.order_id
	 join products on products.product_id = order_items.product_id
	 
     group by customers.first_name ,customer_id;
	 
 -- section b
 
 select city 
 from customers
 union 
 select  country
from customers;


select first_name from customers
union all
select first_name from employees;

-- section c
select( upper(concat(first_name,' ',last_name) ) ) as full_name from customers;
select left(city,3)  from customers;
select lower(email) from customers;
select length(product_name) , product_name from products;
select concat(first_name,' ',last_name) as full_name from employees;


-- section d

select product_name,price,
case
	when price > 300000 then 'Expensive' 
	when price between 100000 and 300000 then 'Moderate'
	when price < 100000 then 'Affordable'
	end as cat_price
 from products;


select employee_id,salary ,
case
when salary >400000 then "High salary"
when salary between 300000 and 400000 then 'Average salary'
when salary < 300000 then "Low salary"
 end as salary_size
from employees;


-- section e

select product_name,price from products

where 
price >(
select  avg(price) as avg_price
from products
);

select employee_id,salary from employees

where salary >(
select avg(salary) 
from employees
);



select c.first_name,
c.customer_id ,

(
select count(*)
 from orders o
where o.customer_id = c.customer_id ) as num_orders
from customers c
where customer_id in 
(
select customer_id
from orders

);




select price, product_name from products

where price=
(
select max(price)
from products
);



select e1. employee_id,
e1.salary ,
e1.department_id 
from employees e1
where e1.salary >(
select avg(e2.salary) 
from employees e2
where e2.department_id = e1.department_id
);






