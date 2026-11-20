
CREATE DATABASE amelia_store;
USE amelia_store;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO customers VALUES
(1,'Amelia','Ayuk','Buea','Cameroon','amelia@gmail.com','2024-01-10'),
(2,'John','Smith','Douala','Cameroon','john@gmail.com','2024-02-15'),
(3,'Mary','Jones','Yaounde','Cameroon','mary@gmail.com','2024-03-20'),
(4,'Peter','Brown','Bamenda','Cameroon','peter@gmail.com','2024-04-12'),
(5,'Grace','White','Buea','Cameroon','grace@gmail.com','2024-05-18'),
(6,'David','Green','Lagos','Nigeria','david@gmail.com','2024-06-22'),
(7,'Sarah','King','Accra','Ghana','sarah@gmail.com','2024-07-01'),
(8,'Paul','Miller','Douala','Cameroon','paul@gmail.com','2024-08-09');

INSERT INTO products VALUES
(1,'Laptop','Electronics',450000,10),
(2,'Phone','Electronics',250000,20),
(3,'Headphones','Accessories',25000,35),
(4,'Keyboard','Accessories',15000,40),
(5,'Office Chair','Furniture',85000,8),
(6,'Desk','Furniture',120000,5),
(7,'Mouse','Accessories',10000,50),
(8,'Monitor','Electronics',175000,12);

INSERT INTO orders VALUES
(101,1,'2024-01-15','Completed'),
(102,2,'2024-02-20','Completed'),
(103,1,'2024-03-10','Pending'),
(104,3,'2024-03-15','Completed'),
(105,4,'2024-04-18','Cancelled'),
(106,5,'2024-05-20','Completed'),
(107,6,'2024-06-25','Completed'),
(108,2,'2024-07-12','Pending'),
(109,7,'2024-08-15','Completed'),
(110,8,'2024-09-05','Completed'),
(111,3,'2024-09-20','Completed'),
(112,5,'2024-10-10','Cancelled');

INSERT INTO order_items VALUES
(1,101,1,1,450000),
(2,101,3,2,25000),
(3,102,2,1,250000),
(4,102,7,2,10000),
(5,103,4,2,15000),
(6,104,5,1,85000),
(7,104,7,1,10000),
(8,105,6,1,120000),
(9,106,2,2,250000),
(10,106,3,1,25000),
(11,107,8,2,175000),
(12,108,1,1,450000),
(13,109,4,3,15000),
(14,109,7,2,10000),
(15,110,6,1,120000),
(16,111,3,3,25000),
(17,111,8,1,175000),
(18,112,5,2,85000);

INSERT INTO departments VALUES
(1,'IT'),
(2,'Sales'),
(3,'Finance'),
(4,'Marketing');

INSERT INTO employees VALUES
(1,'James','Wilson',1,NULL,500000,'2020-01-10'),
(2,'Linda','Taylor',2,1,350000,'2021-03-15'),
(3,'Robert','Thomas',2,2,280000,'2022-06-20'),
(4,'Patricia','Moore',3,1,400000,'2020-08-12'),
(5,'Michael','Martin',1,1,320000,'2023-02-01'),
(6,'Barbara','Jackson',4,1,300000,'2022-11-05'),
(7,'William','Lee',3,4,260000,'2023-07-18'),
(8,'Elizabeth','Harris',2,2,290000,'2024-01-22');
