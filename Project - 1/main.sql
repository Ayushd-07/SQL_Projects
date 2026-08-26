-- *********************************
--      CREATE & USE DATABASE
-- *********************************

create database customers_info;
use customers_info;



-- =======================================================================================================
--                                        01 | CUSTOMERS TABLE
-- =======================================================================================================

create table Customers (
    CustomerID int auto_increment primary key,
    Name varchar(30) not null,
    Email varchar(30) unique,
    Address varchar(50) 
);




-- 1. Insert at least 5 sample customers into the Customers table.
insert into Customers (Name, Email, Address) 
values ('Alice Smith', 'alice@gmail.com', 'Mumbai'),
('Bob Jones', 'bob@gmail.com', 'Pune'),
('Charlie Brown', 'charlie@gmail.com', 'Surat'),
('Alice Green', 'alice.green@gmail.com', 'Ahmedabad'),
('Eva White', 'eva@gmail.com', 'Jaipur'),
('David Black', 'david@gmail.com', 'Delhi'),
('Alice Miller', 'alice.miller@gmail.com', 'Nashik'),
('Henry Wilson', 'henry@gmail.com', 'Vadodara'),
('Grace Taylor', 'grace@gmail.com', 'Udaipur'),
('Jack Martin', 'jack@gmail.com', 'Rajkot');




-- 2. Retrieve all customer details.
select * from Customers;
-- +------------+---------------+------------------------+-----------+
-- | CustomerID | Name          | Email                  | Address   |
-- +------------+---------------+------------------------+-----------+
-- |          1 | Alice Smith   | alice@gmail.com        | Mumbai    |
-- |          2 | Bob Jones     | bob@gmail.com          | Pune      |
-- |          3 | Charlie Brown | charlie@gmail.com      | Surat     |
-- |          4 | Alice Green   | alice.green@gmail.com  | Ahmedabad |
-- |          5 | Eva White     | eva@gmail.com          | Jaipur    |
-- |          6 | David Black   | david@gmail.com        | Delhi     |
-- |          7 | Alice Miller  | alice.miller@gmail.com | Nashik    |
-- |          8 | Henry Wilson  | henry@gmail.com        | Vadodara  |
-- |          9 | Grace Taylor  | grace@gmail.com        | Udaipur   |
-- |         10 | Jack Martin   | jack@gmail.com         | Rajkot    |
-- +------------+---------------+------------------------+-----------+




-- 3. Update a customer's address.
update Customers set Address = "Gandhinagar" where CustomerID = 3;

select * from Customers where CustomerID = 3;
-- +------------+---------------+-------------------+-------------+
-- | CustomerID | Name          | Email             | Address     |
-- +------------+---------------+-------------------+-------------+
-- |          3 | Charlie Brown | charlie@gmail.com | Gandhinagar |
-- +------------+---------------+-------------------+-------------+




-- 4. Delete a customer using their CustomerID.
delete from Customers where CustomerID = 6;

select * from Customers;
-- +------------+---------------+------------------------+-------------+
-- | CustomerID | Name          | Email                  | Address     |
-- +------------+---------------+------------------------+-------------+
-- |          1 | Alice Smith   | alice@gmail.com        | Mumbai      |
-- |          2 | Bob Jones     | bob@gmail.com          | Pune        |
-- |          3 | Charlie Brown | charlie@gmail.com      | Gandhinagar |
-- |          4 | Alice Green   | alice.green@gmail.com  | Ahmedabad   |
-- |          5 | Eva White     | eva@gmail.com          | Jaipur      |
-- |          7 | Alice Miller  | alice.miller@gmail.com | Nashik      |
-- |          8 | Henry Wilson  | henry@gmail.com        | Vadodara    |
-- |          9 | Grace Taylor  | grace@gmail.com        | Udaipur     |
-- |         10 | Jack Martin   | jack@gmail.com         | Rajkot      |
-- +------------+---------------+------------------------+-------------+




-- 5. Display all customers whose name is 'Alice'.
select * from Customers where name like "Alice%";
-- +------------+--------------+------------------------+-----------+
-- | CustomerID | Name         | Email                  | Address   |
-- +------------+--------------+------------------------+-----------+
-- |          1 | Alice Smith  | alice@gmail.com        | Mumbai    |
-- |          4 | Alice Green  | alice.green@gmail.com  | Ahmedabad |
-- |          7 | Alice Miller | alice.miller@gmail.com | Nashik    |
-- +------------+--------------+------------------------+-----------+











-- =======================================================================================================
--                                           2 | ORDERS TABLE
-- =======================================================================================================

create table orders (
    OrderID int auto_increment primary key,
    CustomerID int,
    OrderDate date,
    TotalAmount int,

    foreign key (CustomerID) references Customers(CustomerID)
);




-- 6. Insert at least 5 sample orders into the Orders table.
insert into orders (CustomerID, OrderDate, TotalAmount) 
values (1, '2026-08-24', 2800),
(2, '2026-08-22', 1800),
(3, '2026-08-20', 3200),
(4, '2026-08-18', 1200),
(1, '2026-08-15', 4500),
(2, '2026-08-12', 2100),
(7, '2026-08-10', 3500),
(8, '2026-08-05', 5000),
(2, '2026-07-28', 2500),
(10, '2026-07-20', 4100);

select * from orders;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- |       2 |          2 | 2026-08-22 |        1800 |
-- |       3 |          3 | 2026-08-20 |        3200 |
-- |       4 |          4 | 2026-08-18 |        1200 |
-- |       5 |          1 | 2026-08-15 |        4500 |
-- |       6 |          2 | 2026-08-12 |        2100 |
-- |       7 |          7 | 2026-08-10 |        3500 |
-- |       8 |          8 | 2026-08-05 |        5000 |
-- |       9 |          2 | 2026-07-28 |        2500 |
-- |      10 |         10 | 2026-07-20 |        4100 |
-- +---------+------------+------------+-------------+




-- -7. Retrieve all orders made by a specific customer.
select * from orders where CustomerID = 2;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       2 |          2 | 2026-08-22 |        1800 |
-- |       6 |          2 | 2026-08-12 |        2100 |
-- |       9 |          2 | 2026-07-28 |        2500 |
-- +---------+------------+------------+-------------+




-- 8. Update an order's total amount.
update orders set TotalAmount = 2800 where OrderID = 1;

select * from orders where OrderID = 1;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- +---------+------------+------------+-------------+




-- 9. Delete an order using its OrderID.
delete from orders where OrderID = 5;

select * from orders;
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- |       2 |          2 | 2026-08-22 |        1800 |
-- |       3 |          3 | 2026-08-20 |        3200 |
-- |       4 |          4 | 2026-08-18 |        1200 |
-- |       6 |          2 | 2026-08-12 |        2100 |
-- |       7 |          7 | 2026-08-10 |        3500 |
-- |       8 |          8 | 2026-08-05 |        5000 |
-- |       9 |          2 | 2026-07-28 |        2500 |
-- |      10 |         10 | 2026-07-20 |        4100 |
-- +---------+------------+------------+-------------+




-- 10. Retrieve orders placed in the last 30 days.
select * from orders where OrderDate between "2026-08-01" and "2026-08-31";
-- +---------+------------+------------+-------------+
-- | OrderID | CustomerID | OrderDate  | TotalAmount |
-- +---------+------------+------------+-------------+
-- |       1 |          1 | 2026-08-24 |        2800 |
-- |       2 |          2 | 2026-08-22 |        1800 |
-- |       3 |          3 | 2026-08-20 |        3200 |
-- |       4 |          4 | 2026-08-18 |        1200 |
-- |       6 |          2 | 2026-08-12 |        2100 |
-- |       7 |          7 | 2026-08-10 |        3500 |
-- |       8 |          8 | 2026-08-05 |        5000 |
-- +---------+------------+------------+-------------+




-- 11. Retrieve the highest, lowest, and average order amount using aggregate functions.
select max(TotalAmount) as "Highest Amount", min(TotalAmount) as "Lowest Amount", avg(TotalAmount) as "Avg Amount" from orders;
-- +----------------+---------------+------------+
-- | Highest Amount | Lowest Amount | Avg Amount |
-- +----------------+---------------+------------+
-- |           5000 |          1200 |  2911.1111 |
-- +----------------+---------------+------------+













-- =======================================================================================================
--                                          3 | PRODUCTS TABLE
-- =======================================================================================================

create table products (
    ProductID int auto_increment primary key,
    ProductName varchar(50) not null,
    Price int,
    Stock int
);




-- 12. Insert at least 5 sample products into the Products table.
insert into products (ProductName, Price, Stock)
values ('Laptop', 55000, 10),
('Keyboard', 1200, 25),
('Mouse', 900, 30),
('Headphones', 1800, 20),
('Monitor', 15000, 8),
('USB Cable', 500, 0),
('Webcam', 2500, 12),
('Speaker', 2000, 15),
('Printer', 12000, 7),
('Tablet', 22000, 5);




-- 13. Retrieve all products sorted by price in descending order.
select * from products order by Price desc;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         1 | Laptop      | 55000 |    10 |
-- |        10 | Tablet      | 22000 |     5 |
-- |         5 | Monitor     | 15000 |     8 |
-- |         9 | Printer     | 12000 |     7 |
-- |         7 | Webcam      |  2500 |    12 |
-- |         8 | Speaker     |  2000 |    15 |
-- |         4 | Headphones  |  1800 |    20 |
-- |         2 | Keyboard    |  1200 |    25 |
-- |         3 | Mouse       |   900 |    30 |
-- |         6 | USB Cable   |   500 |     0 |
-- +-----------+-------------+-------+-------+



-- 14. Update the price of a specific product.
update products set Price = 1200 where ProductID = 3;

select * from products where ProductID = 3;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         3 | Mouse       |  1200 |    30 |
-- +-----------+-------------+-------+-------+




-- 15. Delete a product if it's out of stock.
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
-- |         9 | Printer     | 12000 |     7 |
-- |        10 | Tablet      | 22000 |     5 |
-- +-----------+-------------+-------+-------+




-- 16. Retrieve products whose price is between 500 and 2000.
select * from products where Price between 500 and 2000;
-- +-----------+-------------+-------+-------+
-- | ProductID | ProductName | Price | Stock |
-- +-----------+-------------+-------+-------+
-- |         2 | Keyboard    |  1200 |    25 |
-- |         3 | Mouse       |   900 |    30 |
-- |         4 | Headphones  |  1800 |    20 |
-- |         8 | Speaker     |  2000 |    15 |
-- +-----------+-------------+-------+-------+




-- 17. Retrieve the most expensive and cheapest product using MAX() and MIN().
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
-- |         2 | Keyboard    |  1200 |    25 |
-- +-----------+-------------+-------+-------+















-- =======================================================================================================
--                                       4 | ORDERDETAILS TABLE
-- =======================================================================================================

create table orderdetails (
    OrderdetailsID int auto_increment primary key,
    OrderID int,
    ProductID int,
    Quantity int,
    SubTotal int,

    foreign key (OrderID) references orders(OrderID),
    foreign key (ProductID) references products(ProductID)
); 




-- 18. Insert at least 5 sample records into the OrderDetails table.
insert into orderdetails (OrderID, ProductID, Quantity, SubTotal)
values (1, 1, 1, 55000),
(2, 2, 2, 2400),
(3, 3, 3, 2700),
(4, 4, 1, 1800),
(1, 5, 1, 15000),
(3, 2, 3, 3600),
(7, 7, 2, 5000),
(8, 8, 4, 8000),
(3, 4, 2, 3600),
(10, 2, 5, 6000);

select * from orderdetails;
-- +----------------+---------+-----------+----------+----------+
-- | OrderdetailsID | OrderID | ProductID | Quantity | SubTotal |
-- +----------------+---------+-----------+----------+----------+
-- |              1 |       1 |         1 |        1 |    55000 |
-- |              2 |       2 |         2 |        2 |     2400 |
-- |              3 |       3 |         3 |        3 |     2700 |
-- |              4 |       4 |         4 |        1 |     1800 |
-- |              5 |       1 |         5 |        1 |    15000 |
-- |              6 |       3 |         2 |        3 |     3600 |
-- |              7 |       7 |         7 |        2 |     5000 |
-- |              8 |       8 |         8 |        4 |     8000 |
-- |              9 |       3 |         4 |        2 |     3600 |
-- |             10 |      10 |         2 |        5 |     6000 |
-- +----------------+---------+-----------+----------+----------+




-- 19. Retrieve all order details for a specific order.
select * from orderdetails where OrderID = 3;
-- +----------------+---------+-----------+----------+----------+
-- | OrderdetailsID | OrderID | ProductID | Quantity | SubTotal |
-- +----------------+---------+-----------+----------+----------+
-- |              3 |       3 |         3 |        3 |     2700 |
-- |              6 |       3 |         2 |        3 |     3600 |
-- |              9 |       3 |         4 |        2 |     3600 |
-- +----------------+---------+-----------+----------+----------+




-- 20. Calculate the total revenue generated from all orders using SUM().
select sum(SubTotal) as "Total_Revenue" from orderdetails;
-- +---------------+
-- | Total_Revenue |
-- +---------------+
-- |        103100 |
-- +---------------+




-- 21. Retrieve the top 3 most ordered products.
select ProductID, sum(Quantity) as "Total_Ordered" from orderdetails group by ProductID order by Total_Ordered desc limit 3;
-- +-----------+---------------+
-- | ProductID | Total_Ordered |
-- +-----------+---------------+
-- |         2 |            10 |
-- |         8 |             4 |
-- |         3 |             3 |
-- +-----------+---------------+




-- 22. Count how many times a specific product has been sold using COUNT().
select productID, count(*) as "Times_Sold" from orderdetails group by ProductID; 
-- +-----------+------------+
-- | productID | Times_Sold |
-- +-----------+------------+
-- |         1 |          1 |
-- |         2 |          3 |
-- |         3 |          1 |
-- |         4 |          2 |
-- |         5 |          1 |
-- |         7 |          1 |
-- |         8 |          1 |
-- +-----------+------------+