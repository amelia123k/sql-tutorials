-- FreshMart practice database (MySQL)
-- Run this whole script in MySQL Workbench, phpMyAdmin or the mysql command line.

CREATE DATABASE IF NOT EXISTS freshmart;
USE freshmart;

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
  store_id INT PRIMARY KEY,
  store_name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  store_id INT,
  manager_id INT,
  salary INT
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(80),
  category VARCHAR(30),
  price INT
);

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  store_id INT,
  order_date DATE
);

CREATE TABLE order_items (
  order_id INT,
  product_id INT,
  quantity INT
);

INSERT INTO stores VALUES
(1, 'FreshMart Akwa', 'Douala'),
(2, 'FreshMart Bastos', 'Yaounde'),
(3, 'FreshMart Molyko', 'Buea');

INSERT INTO employees VALUES
(1, 'Nadine Fotso', 1, NULL, 450000),
(2, 'Paul Mbarga', 2, NULL, 430000),
(3, 'Grace Ndive', 3, NULL, 420000),
(4, 'Eric Tchoumi', 1, 1, 220000),
(5, 'Sandrine Ekane', 1, 1, 210000),
(6, 'Joseph Ateba', 2, 2, 225000),
(7, 'Linda Nkeng', 2, 2, 205000),
(8, 'Brice Mukete', 3, 3, 200000);

INSERT INTO products VALUES
(1, 'Mineral Water 1.5L', 'Beverages', 500),
(2, 'Orange Juice 1L', 'Beverages', 1500),
(3, 'Malt Drink 33cl', 'Beverages', 700),
(4, 'Sparkling Soda 50cl', 'Beverages', 600),
(5, 'Fresh Milk 1L', 'Dairy', 1800),
(6, 'Yoghurt Pack', 'Dairy', 2200),
(7, 'Cheese Block 500g', 'Dairy', 4500),
(8, 'Rice 5kg', 'Grains', 4000),
(9, 'Spaghetti 500g', 'Grains', 900),
(10, 'Maize Flour 2kg', 'Grains', 1600),
(11, 'Plantain Chips', 'Snacks', 500),
(12, 'Biscuits Pack', 'Snacks', 800),
(13, 'Peanuts 250g', 'Snacks', 1000),
(14, 'Laundry Soap 1kg', 'Household', 2500),
(15, 'Dish Liquid 750ml', 'Household', 1900);

INSERT INTO customers VALUES
(1, 'Aminatou Bello', 'Douala'),
(2, 'Samuel Etoa', 'Douala'),
(3, 'Chantal Nguemo', 'Yaounde'),
(4, 'Franck Biyik', 'Yaounde'),
(5, 'Esther Tabi', 'Buea'),
(6, 'Hassan Moussa', 'Douala'),
(7, 'Marie Ngo Bell', 'Yaounde'),
(8, 'Kevin Achu', 'Buea'),
(9, 'Doris Fonyuy', 'Buea'),
(10, 'Pierre Kamga', 'Douala');

INSERT INTO orders VALUES
(1, 1, 1, '2026-09-02'),
(2, 2, 1, '2026-09-03'),
(3, 3, 2, '2026-09-03'),
(4, 5, 3, '2026-09-05'),
(5, 1, 1, '2026-09-08'),
(6, 4, 2, '2026-09-09'),
(7, 6, 1, '2026-09-10'),
(8, 3, 2, '2026-09-12'),
(9, 8, 3, '2026-09-14'),
(10, 2, 1, '2026-09-15'),
(11, 7, 2, '2026-09-18'),
(12, 5, 3, '2026-09-20'),
(13, 1, 1, '2026-09-22'),
(14, 4, 2, '2026-09-25'),
(15, 6, 1, '2026-09-27'),
(16, 8, 3, '2026-09-28'),
(17, 3, 2, '2026-09-29'),
(18, 2, 1, '2026-09-30');

INSERT INTO order_items VALUES
(1, 1, 6), (1, 8, 1), (1, 5, 2),
(2, 2, 2), (2, 12, 3),
(3, 7, 1), (3, 6, 2), (3, 9, 4),
(4, 1, 10), (4, 11, 5),
(5, 14, 1), (5, 15, 2), (5, 3, 6),
(6, 8, 2), (6, 10, 1),
(7, 5, 3), (7, 13, 2),
(8, 2, 3), (8, 7, 2),
(9, 4, 12), (9, 12, 4),
(10, 8, 1), (10, 6, 1),
(11, 14, 2), (11, 9, 5),
(12, 3, 8), (12, 13, 3),
(13, 7, 1), (13, 2, 1),
(14, 15, 1), (14, 1, 6),
(15, 10, 2), (15, 11, 4),
(16, 5, 2), (16, 9, 3),
(17, 8, 1), (17, 14, 1),
(18, 12, 5), (18, 4, 6);

-- Quick check: this should return 15 products
SELECT COUNT(*) AS total_products FROM products;
