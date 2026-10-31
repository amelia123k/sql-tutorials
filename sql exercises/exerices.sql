
-- FreshMart SQL exercises (MySQL)
-- Run freshmart_setup_mysql.sql first to create the database and data.


#1st question   SELECT: every product's name, category and price
select product_name,category,price from products;

#2nd question   WHERE: Beverages priced above 1,000 FCFA

select product_name,category,price from products
where category= 'Beverages' and price>1000;

#3rd question  GROUP BY and ORDER BY: products per category, biggest first

select category, COUNT(*) as total_products
 from products
group by category
order by total_products desc;

#4th question  HAVING vs WHERE: categories with average price above 2,000 FCFA
 -- HAVING filters the grouped results (after GROUP BY); WHERE filters rows before grouping.
select category,avg(price) as avg_price 
from products
group by category
having avg(price)>2000
order by category asc;
#having here was filtering grouped  results

#5th question  LIMIT and aliasing: 5 most expensive products

select product_name as Product,
price as 'Price (FCFA)'
 from products
order by price desc
limit 5 ;


#intermediate
#1st question  INNER JOIN: each order with the customer's name and order date
select customers.name ,orders.order_date from 
orders inner join  customers on customers.customer_id=orders.customer_id;

#2nd question   LEFT JOIN: customers who have never placed an order
select customers.name from customers
left join orders on customers.customer_id = orders.customer_id
where orders.order_id is null;

#3rd question . Self join: each employee next to their manager

select e.name as employee_name, m.name as manager_name 
from employees as e 
left join employees as m on e.manager_id=m.emp_id;

#4th question  Multi-table join: total revenue per store, highest first

select stores.store_name , sum(products.price * order_items.quantity) as total_revenue
from orders
inner join order_items on orders.order_id = order_items.order_id
inner join products on order_items.product_id = products.product_id
inner join stores on  orders.store_id = stores.store_id
group by stores.store_name

# business question whichh store will i choose to inest in and which customer will i chose to win over

-- “I would invest in FreshMart Molyko because it has the lowest revenue (32,800 FCFA) and the most room to grow. 
-- I would also target Doris Fonyuy and Pierre Kamga,
 -- who are registered but have never ordered, with a promotion to win them over.”


