-- ============================================================
-- 01 | CREATE DATABASE
-- ============================================================
create database customers_info;

-- ============================================================
-- 02 | USE DATABASES
-- ============================================================
use customers_info;



-- ============================================================
-- 03 | CREATE TABLE
-- ============================================================
create table Customers (
    CustomerID int auto_increment primary key,
    Name varchar(30) not null,
    Email varchar(30) unique,
    Address varchar(50) 
);



-- ============================================================
-- 04 | INSERT VALUES
-- ============================================================
insert into Customers (Name, Email, Address) 
values ('Alice Smith', 'alice.smith@email.com', '123 Maple St'),
('Bob Jones', 'bob.jones@email.com', '456 Oak Ave'),
('Charlie Brown', 'charlie.b@email.com', '789 Pine Rd'),
('Alice Green', 'alice.green@email.com', '321 Elm St'),
('Eva White', 'eva.white@email.com', '654 Birch Ln'),
('David Black', 'david.b@email.com', '777 Cedar Rd'),
('Alice Miller', 'alice.m@email.com', '888 Willow Dr'),
('Henry Wilson', 'henry.w@email.com', '999 Spruce Ave');



-- ============================================================
-- 05 | DISPLAY ALL CUSTOMERS
-- ============================================================

select * from Customers;
-- +------------+---------------+-----------------------+----------------+
-- | CustomerID | Name          | Email                 | Address        |
-- +------------+---------------+-----------------------+----------------+
-- |          1 | Alice Smith   | alice.smith@email.com | 123 Maple St   |
-- |          2 | Bob Jones     | bob.jones@email.com   | 456 Oak Ave    |
-- |          3 | Charlie Brown | charlie.b@email.com   | 789 Pine Rd    |
-- |          4 | Alice Green   | alice.green@email.com | 321 Elm St     |
-- |          5 | Eva White     | eva.white@email.com   | 654 Birch Ln   |
-- |          6 | David Black   | david.b@email.com     | 777 Cedar Rd   |
-- |          7 | Alice Miller  | alice.m@email.com     | 888 Willow Dr  |
-- |          8 | Henry Wilson  | henry.w@email.com     | 999 Spruce Ave |
-- +------------+---------------+-----------------------+----------------+



-- ============================================================
-- 06 | UPDATE CUSTOMER ADDRESS
-- ============================================================
update Customers set Address = "999 New Sunset Blvd" where CustomerID = 3;

select * from Customers where CustomerID = 3;
-- +------------+---------------+---------------------+---------------------+
-- | CustomerID | Name          | Email               | Address             |
-- +------------+---------------+---------------------+---------------------+
-- |          3 | Charlie Brown | charlie.b@email.com | 999 New Sunset Blvd |
-- +------------+---------------+---------------------+---------------------+



-- ============================================================
-- 07 | DELETE CUSTOMER
-- ============================================================
delete from Customers where CustomerID = 6;

select * from Customers;
-- +------------+---------------+-----------------------+---------------------+
-- | CustomerID | Name          | Email                 | Address             |
-- +------------+---------------+-----------------------+---------------------+
-- |          1 | Alice Smith   | alice.smith@email.com | 123 Maple St        |
-- |          2 | Bob Jones     | bob.jones@email.com   | 456 Oak Ave         |
-- |          3 | Charlie Brown | charlie.b@email.com   | 999 New Sunset Blvd |
-- |          4 | Alice Green   | alice.green@email.com | 321 Elm St          |
-- |          5 | Eva White     | eva.white@email.com   | 654 Birch Ln        |
-- |          7 | Alice Miller  | alice.m@email.com     | 888 Willow Dr       |
-- |          8 | Henry Wilson  | henry.w@email.com     | 999 Spruce Ave      |
-- +------------+---------------+-----------------------+---------------------+



-- ============================================================
-- 08 | FIND CUSTOMERS WHOSE NAME STARTS WITH 'ALICE'
-- ============================================================

select * from Customers where name like "Alice%";
-- +------------+--------------+-----------------------+---------------+
-- | CustomerID | Name         | Email                 | Address       |
-- +------------+--------------+-----------------------+---------------+
-- |          1 | Alice Smith  | alice.smith@email.com | 123 Maple St  |
-- |          4 | Alice Green  | alice.green@email.com | 321 Elm St    |
-- |          7 | Alice Miller | alice.m@email.com     | 888 Willow Dr |
-- +------------+--------------+-----------------------+---------------+











-- ******************************************************************************************
--                                         Order Table
-- ******************************************************************************************


-- ===========================================
-- 01 | CREATE TABLE
-- ===========================================
create table orders (
    OrderID int auto_increment primary key,
    CustomerID int,
    OrderDate date,
    TotalAmount int,

    foreign key (CustomerID) references Customers(CustomerID)
);



-- ======================================================
-- 02 | INSERT VALUES
-- ======================================================
insert into orders (CustomerID, OrderDate, TotalAmount) 
values (1, '2026-08-24', 2500.00),
(2, '2026-08-20', 1800.00),
(3, '2026-08-15', 3200.00),
(4, '2026-08-10', 1200.00),
(5, '2026-07-01', 4500.00),
(1, '2026-07-15', 2100.00),
(2, '2026-08-22', 3500.00);

select * from orders;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2500 |
-- |       2 |          2 | 2026-08-20 |        1800 |
-- |       3 |          3 | 2026-08-15 |        3200 |
-- |       4 |          4 | 2026-08-10 |        1200 |
-- |       5 |          5 | 2026-07-01 |        4500 |
-- |       6 |          1 | 2026-07-15 |        2100 |
-- |       7 |          2 | 2026-08-22 |        3500 |
-- +---------+------------+------------+-------------+



-- ============================================================
-- 3 | DISPLAY ORDERS OF A SPECIFIC CUSTOMER
-- ============================================================ 

select * from orders where CustomerID = 2;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       2 |          2 | 2026-08-20 |        1800 |
-- |       7 |          2 | 2026-08-22 |        3500 |
-- +---------+------------+------------+-------------+



-- ===========================================================
-- 4 | UPDATE ORDER TOTAL AMOUN
-- ============================================================ 

update orders set TotalAmount = 2800 where OrderID = 1;

select * from orders where OrderID = 1;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- +---------+------------+------------+-------------+



-- ============================================================
-- 5 | DELETE AN ORDER
-- ============================================================ 
delete from orders where OrderID = 5;

select * from orders;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- |       2 |          2 | 2026-08-20 |        1800 |
-- |       3 |          3 | 2026-08-15 |        3200 |
-- |       4 |          4 | 2026-08-10 |        1200 |
-- |       6 |          1 | 2026-07-15 |        2100 |
-- |       7 |          2 | 2026-08-22 |        3500 |
-- +---------+------------+------------+-------------+



-- ============================================================
-- 6 | ORDERS FROM LAST 30 DAYS
-- ============================================================ 

select * from orders where OrderDate between "2026-08-01" and "2026-08-31";
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- |       2 |          2 | 2026-08-20 |        1800 |
-- |       3 |          3 | 2026-08-15 |        3200 |
-- |       4 |          4 | 2026-08-10 |        1200 |
-- |       7 |          2 | 2026-08-22 |        3500 |
-- +---------+------------+------------+-------------+



-- ============================================================
-- 7 | HIGHEST, LOWEST AND AVERAGE ORDER AMOUNT
-- ============================================================

select max(TotalAmount) as "Highest Amount", min(TotalAmount) as "Lowest Amount", avg(TotalAmount) as "Avg Amount" from orders;
-- +----------------+---------------+------------+
-- | Highest Amount | Lowest Amount | Avg Amount |
-- +----------------+---------------+------------+
-- |           3500 |          1200 |  2433.3333 |
-- +----------------+---------------+------------+













-- ******************************************************************************************
--                                     Product Table
-- ******************************************************************************************


-- ===========================================
-- 01 | CREATE TABLE
-- ===========================================
create table products (
    ProductID int auto_increment primary key,
    ProductName varchar(50) not null,
    Price int,
    Stock int
);



-- ======================================================
-- 02 | INSERT VALUES
-- ======================================================
insert into products (ProductName, Price, Stock)
values ('Laptop', 55000, 10),
('Keyboard', 1200, 25),
('Mouse', 700, 30),
('Headphones', 1800, 20),
('Monitor', 15000, 8),
('USB Cable', 500, 0),
('Webcam', 2500, 12),
('Speaker', 2000, 15);



-- ============================================================
-- 3 | DISPLAY PRODUCTS BY PRICE DESCENDING
-- ============================================================

select * from products order by Price desc;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         1 | Laptop      | 55000 |    10 |
-- |         5 | Monitor     | 15000 |     8 |
-- |         7 | Webcam      |  2500 |    12 |
-- |         8 | Speaker     |  2000 |    15 |
-- |         4 | Headphones  |  1800 |    20 |
-- |         2 | Keyboard    |  1200 |    25 |
-- |         3 | Mouse       |   700 |    30 |
-- |         6 | USB Cable   |   500 |     0 |
-- +-----------+-------------+-------+-------+



-- ============================================================
-- 4 | UPDATE PRODUCT PRICE
-- ============================================================
update products set Price = 900 where ProductID = 3;

select * from products where ProductID = 3;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         3 | Mouse       |   900 |    30 |
-- +-----------+-------------+-------+-------+



-- ============================================================
-- 5 | DELETE PRODUCT IF OUT OF STOCK
-- ============================================================
delete from products where Stock = 0;

select * from products;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         1 | Laptop      | 55000 |    10 |
-- |         2 | Keyboard    |  1200 |    25 |
-- |         3 | Mouse       |   900 |    30 |
-- |         4 | Headphones  |  1800 |    20 |
-- |         5 | Monitor     | 15000 |     8 |
-- |         7 | Webcam      |  2500 |    12 |
-- |         8 | Speaker     |  2000 |    15 |
-- +-----------+-------------+-------+-------+



-- ============================================================
-- 6 | PRODUCTS BETWEEN 500 AND 2000
-- ============================================================

select * from products where Price between 500 and 2000;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         2 | Keyboard    |  1200 |    25 |
-- |         3 | Mouse       |   900 |    30 |
-- |         4 | Headphones  |  1800 |    20 |
-- |         8 | Speaker     |  2000 |    15 |
-- +-----------+-------------+-------+-------+



-- ============================================================
-- 7 | MOST EXPENSIVE & CHEAPEST PRODUCT
-- ============================================================

select * from products order by Price desc limit 1;   -- MOST EXPENSIVE PRODUCT
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         1 | Laptop      | 55000 |    10 |
-- +-----------+-------------+-------+-------+

select * from products order by Price limit 1;     -- CHEAPEST PRODUCT
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         3 | Mouse       |   900 |    30 |
-- +-----------+-------------+-------+-------+















-- ******************************************************************************************
--                                     Order Details Table
-- ******************************************************************************************


-- ===========================================
-- 01 | CREATE TABLE
-- ===========================================
create table orderdetails (
    OrderdetailsID int auto_increment primary key,
    OrderID int,
    ProductID int,
    Quantity int,
    SubTotal int,

    foreign key (OrderID) references orders(OrderID),
    foreign key (ProductID) references products(ProductID)
); 



-- ======================================================
-- 02 | INSERT VALUES
-- ======================================================
insert into orderdetails (OrderID, ProductID, Quantity, SubTotal)
values (1, 1, 1, 55000),
(1, 2, 2, 2600),
(2, 3, 3, 2100),
(2, 4, 1, 1800),
(3, 5, 1, 15000),
(3, 2, 2, 2600),
(4, 4, 2, 3600),
(7, 7, 2, 5000);

select * from orderdetails;
-- +----------------+---------+-----------+----------+----------+
-- | OrderdetailsID | OrderID | ProductID | Quantity | SubTotal |
-- +----------------+---------+-----------+----------+----------+
-- |              1 |       1 |         1 |        1 |    55000 |
-- |              2 |       1 |         2 |        2 |     2600 |
-- |              3 |       2 |         3 |        3 |     2100 |
-- |              4 |       2 |         4 |        1 |     1800 |
-- |              5 |       3 |         5 |        1 |    15000 |
-- |              6 |       3 |         2 |        2 |     2600 |
-- |              7 |       4 |         4 |        2 |     3600 |
-- |              8 |       7 |         7 |        2 |     5000 |
-- +----------------+---------+-----------+----------+----------+



-- ============================================================
-- 3 | DISPLAY DETAILS OF A SPECIFIC ORDER
-- ============================================================

select * from orderdetails where OrderID = 2;
-- +----------------+---------+-----------+----------+----------+
-- | OrderdetailsID | OrderID | ProductID | Quantity | SubTotal |
-- +----------------+---------+-----------+----------+----------+
-- |              3 |       2 |         3 |        3 |     2100 |
-- |              4 |       2 |         4 |        1 |     1800 |
-- +----------------+---------+-----------+----------+----------+



-- ============================================================
-- 4 | TOTAL REVENUE FROM ALL ORDERS
-- ============================================================

select sum(SubTotal) as "Total_Revenue" from orderdetails;
-- +---------------+
-- | Total_Revenue |
-- +---------------+
-- |         87700 |
-- +---------------+



-- ============================================================
-- 5 | TOP 3 MOST ORDERED PRODUCTS
-- ============================================================

select ProductID, sum(Quantity) as "Total_Ordered" from orderdetails group by ProductID order by Total_Ordered desc limit 3;
-- +-----------+---------------+
-- | ProductID | Total_Ordered |
-- +-----------+---------------+
-- |         2 |             4 |
-- |         3 |             3 |
-- |         4 |             3 |
-- +-----------+---------------+



-- ============================================================
-- 6 | COUNT HOW MANY TIMES A PRODUCT WAS SOLD
-- ============================================================

select productID, count(*) as "Times_Sold" from orderdetails group by ProductID; 
-- +-----------+------------+
-- | productID | Times_Sold |
-- +-----------+------------+
-- |         1 |          1 |
-- |         2 |          2 |
-- |         3 |          1 |
-- |         4 |          2 |
-- |         5 |          1 |
-- |         7 |          1 |
-- +-----------+------------+