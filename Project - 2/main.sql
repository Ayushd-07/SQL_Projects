use company;

-- ======================================================================================
--                               CUSTOMERS TABLE
-- =======================================================================================
create table customers (
    Cus_ID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(100),
    RegistrationDate date
);

insert into customers (FirstName, LastName, Email, RegistrationDate)
values ('John', 'Doe', ' john.doe@email.com ', '2022-03-15'),
('Jane', 'Smith', 'jane.smith@email.com', '2021-11-02'),
('Michael', 'Brown', ' michael.brown@email.com ', '2023-01-10'),
('Emily', 'Davis', 'emily.davis@email.com', '2022-07-25'),
('David', 'Wilson', 'david.wilson@email.com', '2023-03-18'),
('Sarah', 'Miller', ' sarah.miller@email.com ', '2021-09-12'),
('Robert', 'Taylor', 'robert.taylor@email.com', '2022-12-05'),
('Olivia', 'Anderson', 'olivia.anderson@email.com', '2023-05-20'),
('Daniel', 'Thomas', 'daniel.thomas@email.com', '2022-02-14'),
('Sophia', 'Moore', ' sophia.moore@email.com ', '2023-06-30');


select * from customers;
-- +--------+-----------+----------+---------------------------+------------------+
-- | Cus_ID | FirstName | LastName | Email                     | RegistrationDate |
-- +--------+-----------+----------+---------------------------+------------------+
-- |      1 | John      | Doe      |  john.doe@email.com       | 2022-03-15       |
-- |      2 | Jane      | Smith    | jane.smith@email.com      | 2021-11-02       |
-- |      3 | Michael   | Brown    |  michael.brown@email.com  | 2023-01-10       |
-- |      4 | Emily     | Davis    | emily.davis@email.com     | 2022-07-25       |
-- |      5 | David     | Wilson   | david.wilson@email.com    | 2023-03-18       |
-- |      6 | Sarah     | Miller   |  sarah.miller@email.com   | 2021-09-12       |
-- |      7 | Robert    | Taylor   | robert.taylor@email.com   | 2022-12-05       |
-- |      8 | Olivia    | Anderson | olivia.anderson@email.com | 2023-05-20       |
-- |      9 | Daniel    | Thomas   | daniel.thomas@email.com   | 2022-02-14       |
-- |     10 | Sophia    | Moore    |  sophia.moore@email.com   | 2023-06-30       |
-- +--------+-----------+----------+---------------------------+------------------+




-- ======================================================================================
--                                      ORDERS TABLE
-- ======================================================================================
create table orders (
    OrderID int auto_increment primary key,
    Cus_ID int,
    Order_date date,
    Total_Amount DECIMAL(10,2)
);

insert into orders (Cus_ID, Order_date, Total_Amount)
values (1, '2025-07-01', 150.50),
(2, '2025-07-03', 850.75),
(3, '2025-07-05', 1250.00),
(4, '2025-07-08', 450.25),
(5, '2025-07-10', 2100.50),
(6, '2025-07-12', 650.00),
(7, '2025-07-15', 300.75),
(8, '2025-07-18', 1750.25),
(11, '2025-07-20', 950.00),
(12, '2025-07-22', 500.50);

select * from orders;
-- +---------+--------+------------+--------------+
-- | OrderID | Cus_ID | Order_date | Total_Amount |
-- +---------+--------+------------+--------------+
-- |       1 |      1 | 2025-07-01 |       150.50 |
-- |       2 |      2 | 2025-07-03 |       850.75 |
-- |       3 |      3 | 2025-07-05 |      1250.00 |
-- |       4 |      4 | 2025-07-08 |       450.25 |
-- |       5 |      5 | 2025-07-10 |      2100.50 |
-- |       6 |      6 | 2025-07-12 |       650.00 |
-- |       7 |      7 | 2025-07-15 |       300.75 |
-- |       8 |      8 | 2025-07-18 |      1750.25 |
-- |       9 |     11 | 2025-07-20 |       950.00 |
-- |      10 |     12 | 2025-07-22 |       500.50 |
-- +---------+--------+------------+--------------+





-- ======================================================================================
--                                  EMPLOYEES TABLE
-- ======================================================================================
create table emp (
    Emp_ID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Department varchar(30),
    Hire_date date,
    Salary int
);

insert into emp (FirstName, LastName, Department, Hire_date, Salary)
values ('Mark', 'Johnson', 'Sales', '2020-01-15', 50000),
('Emma', 'Williams', 'HR', '2021-03-20', 60000),
('James', 'Jones', 'IT', '2019-06-10', 85000),
('Sophia', 'Brown', 'Finance', '2022-02-25', 72000),
('William', 'Davis', 'Sales', '2020-08-12', 55000),
('Olivia', 'Miller', 'IT', '2021-11-05', 95000),
('Benjamin', 'Wilson', 'HR', '2023-01-18', 48000),
('Ava', 'Moore', 'Finance', '2022-09-30', 78000),
('Henry', 'Taylor', 'Sales', '2018-04-22', 65000),
('Mia', 'Anderson', 'IT', '2023-05-15', 45000);


select * from emp;
-- +--------+-----------+----------+------------+------------+--------+
-- | Emp_ID | FirstName | LastName | Department | Hire_date  | Salary |
-- +--------+-----------+----------+------------+------------+--------+
-- |      1 | Mark      | Johnson  | Sales      | 2020-01-15 |  50000 |
-- |      2 | Emma      | Williams | HR         | 2021-03-20 |  60000 |
-- |      3 | James     | Jones    | IT         | 2019-06-10 |  85000 |
-- |      4 | Sophia    | Brown    | Finance    | 2022-02-25 |  72000 |
-- |      5 | William   | Davis    | Sales      | 2020-08-12 |  55000 |
-- |      6 | Olivia    | Miller   | IT         | 2021-11-05 |  95000 |
-- |      7 | Benjamin  | Wilson   | HR         | 2023-01-18 |  48000 |
-- |      8 | Ava       | Moore    | Finance    | 2022-09-30 |  78000 |
-- |      9 | Henry     | Taylor   | Sales      | 2018-04-22 |  65000 |
-- |     10 | Mia       | Anderson | IT         | 2023-05-15 |  45000 |
-- +--------+-----------+----------+------------+------------+--------+





-- ===========================================================================================================
-- ===========================================================================================================
-- ===========================================================================================================


-- 1. INNER JOIN: Retrieve all orders and customer details where orders exist.
select o.OrderID, c.Cus_ID, c.FirstName, c.LastName, o.Total_Amount from orders o
inner join customers c on o.Cus_ID = c.Cus_ID;

-- +---------+--------+-----------+----------+--------------+
-- | OrderID | Cus_ID | FirstName | LastName | Total_Amount |
-- +---------+--------+-----------+----------+--------------+
-- |       1 |      1 | John      | Doe      |       150.50 |
-- |       2 |      2 | Jane      | Smith    |       850.75 |
-- |       3 |      3 | Michael   | Brown    |      1250.00 |
-- |       4 |      4 | Emily     | Davis    |       450.25 |
-- |       5 |      5 | David     | Wilson   |      2100.50 |
-- |       6 |      6 | Sarah     | Miller   |       650.00 |
-- |       7 |      7 | Robert    | Taylor   |       300.75 |
-- |       8 |      8 | Olivia    | Anderson |      1750.25 |
-- +---------+--------+-----------+----------+--------------+



-- 2. LEFT JOIN: Retrieve all customers and their corresponding orders (if any).
select c.Cus_ID, c.FirstName, c.LastName, o.OrderID, o.Total_Amount from customers c
left join orders o on c.Cus_ID = o.Cus_ID;

-- +--------+-----------+----------+---------+--------------+
-- | Cus_ID | FirstName | LastName | OrderID | Total_Amount |
-- +--------+-----------+----------+---------+--------------+
-- |      1 | John      | Doe      |       1 |       150.50 |
-- |      2 | Jane      | Smith    |       2 |       850.75 |
-- |      3 | Michael   | Brown    |       3 |      1250.00 |
-- |      4 | Emily     | Davis    |       4 |       450.25 |
-- |      5 | David     | Wilson   |       5 |      2100.50 |
-- |      6 | Sarah     | Miller   |       6 |       650.00 |
-- |      7 | Robert    | Taylor   |       7 |       300.75 |
-- |      8 | Olivia    | Anderson |       8 |      1750.25 |
-- |      9 | Daniel    | Thomas   |    NULL |         NULL |
-- |     10 | Sophia    | Moore    |    NULL |         NULL |
-- +--------+-----------+----------+---------+--------------+



-- 3. RIGHT JOIN: Retrieve all orders and their corresponding customers (if any).
select o.OrderID, o.Cus_ID, o.Total_Amount, c.FirstName, c.LastName from orders o
right join customers c on o.Cus_ID = c.Cus_ID;

-- +---------+--------+--------------+-----------+----------+
-- | OrderID | Cus_ID | Total_Amount | FirstName | LastName |
-- +---------+--------+--------------+-----------+----------+
-- |       1 |      1 |       150.50 | John      | Doe      |
-- |       2 |      2 |       850.75 | Jane      | Smith    |
-- |       3 |      3 |      1250.00 | Michael   | Brown    |
-- |       4 |      4 |       450.25 | Emily     | Davis    |
-- |       5 |      5 |      2100.50 | David     | Wilson   |
-- |       6 |      6 |       650.00 | Sarah     | Miller   |
-- |       7 |      7 |       300.75 | Robert    | Taylor   |
-- |       8 |      8 |      1750.25 | Olivia    | Anderson |
-- |    NULL |   NULL |         NULL | Daniel    | Thomas   |
-- |    NULL |   NULL |         NULL | Sophia    | Moore    |
-- +---------+--------+--------------+-----------+----------+



-- 4. FULL OUTER JOIN: Retrieve all customers and all orders, regardless of matching.
select c.Cus_ID, c.FirstName, c.LastName, o.OrderID, o.Order_date, o.Total_Amount from customers c
left join orders o on c.Cus_ID = o.Cus_ID
union
select c.Cus_ID, c.FirstName, c.LastName, o.OrderID, o.Order_date, o.Total_Amount from customers c
right join orders o on c.Cus_ID = o.Cus_ID;

-- +--------+-----------+----------+---------+------------+--------------+
-- | Cus_ID | FirstName | LastName | OrderID | Order_date | Total_Amount |
-- +--------+-----------+----------+---------+------------+--------------+
-- |      1 | John      | Doe      |       1 | 2025-07-01 |       150.50 |
-- |      2 | Jane      | Smith    |       2 | 2025-07-03 |       850.75 |
-- |      3 | Michael   | Brown    |       3 | 2025-07-05 |      1250.00 |
-- |      4 | Emily     | Davis    |       4 | 2025-07-08 |       450.25 |
-- |      5 | David     | Wilson   |       5 | 2025-07-10 |      2100.50 |
-- |      6 | Sarah     | Miller   |       6 | 2025-07-12 |       650.00 |
-- |      7 | Robert    | Taylor   |       7 | 2025-07-15 |       300.75 |
-- |      8 | Olivia    | Anderson |       8 | 2025-07-18 |      1750.25 |
-- |      9 | Daniel    | Thomas   |    NULL | NULL       |         NULL |
-- |     10 | Sophia    | Moore    |    NULL | NULL       |         NULL |
-- |   NULL | NULL      | NULL     |       9 | 2025-07-20 |       950.00 |
-- |   NULL | NULL      | NULL     |      10 | 2025-07-22 |       500.50 |
-- +--------+-----------+----------+---------+------------+--------------+



-- 5. Write a subquery to find customers who have placed orders worth more than the average order amount.
select * from orders where Total_Amount > (select avg(Total_Amount) from orders);

-- +---------+--------+------------+--------------+
-- | OrderID | Cus_ID | Order_date | Total_Amount |
-- +---------+--------+------------+--------------+
-- |       3 |      3 | 2025-07-05 |      1250.00 |
-- |       5 |      5 | 2025-07-10 |      2100.50 |
-- |       8 |      8 | 2025-07-18 |      1750.25 |
-- |       9 |     11 | 2025-07-20 |       950.00 |
-- +---------+--------+------------+--------------+



-- 6. Write a subquery to find employees with salaries above the average salary.
select * from emp where Salary > (select avg(Salary) from emp);

-- +--------+-----------+----------+------------+------------+--------+
-- | Emp_ID | FirstName | LastName | Department | Hire_date  | Salary |
-- +--------+-----------+----------+------------+------------+--------+
-- |      3 | James     | Jones    | IT         | 2019-06-10 |  85000 |
-- |      4 | Sophia    | Brown    | Finance    | 2022-02-25 |  72000 |
-- |      6 | Olivia    | Miller   | IT         | 2021-11-05 |  95000 |
-- |      8 | Ava       | Moore    | Finance    | 2022-09-30 |  78000 |
-- +--------+-----------+----------+------------+------------+--------+



-- 7. Extract the year and month from the OrderDate.
select OrderID, Order_date, Total_Amount, year(Order_date) as "Order_Year", month(Order_date) as "Order_Month" from orders;

-- +---------+------------+--------------+------------+-------------+
-- | OrderID | Order_date | Total_Amount | Order_Year | Order_Month |
-- +---------+------------+--------------+------------+-------------+
-- |       1 | 2025-07-01 |       150.50 |       2025 |           7 |
-- |       2 | 2025-07-03 |       850.75 |       2025 |           7 |
-- |       3 | 2025-07-05 |      1250.00 |       2025 |           7 |
-- |       4 | 2025-07-08 |       450.25 |       2025 |           7 |
-- |       5 | 2025-07-10 |      2100.50 |       2025 |           7 |
-- |       6 | 2025-07-12 |       650.00 |       2025 |           7 |
-- |       7 | 2025-07-15 |       300.75 |       2025 |           7 |
-- |       8 | 2025-07-18 |      1750.25 |       2025 |           7 |
-- |       9 | 2025-07-20 |       950.00 |       2025 |           7 |
-- |      10 | 2025-07-22 |       500.50 |       2025 |           7 |
-- +---------+------------+--------------+------------+-------------+



-- 8. Calculate the difference in days between the OrderDate and the current date.
select OrderID, Order_date, curdate() as "Current_Date", datediff(Current_Date, Order_date) as  DaysDifference from orders;

-- +---------+------------+--------------+----------------+
-- | OrderID | Order_date | Current_Date | DaysDifference |
-- +---------+------------+--------------+----------------+
-- |       1 | 2025-07-01 | 2026-09-07   |            433 |
-- |       2 | 2025-07-03 | 2026-09-07   |            431 |
-- |       3 | 2025-07-05 | 2026-09-07   |            429 |
-- |       4 | 2025-07-08 | 2026-09-07   |            426 |
-- |       5 | 2025-07-10 | 2026-09-07   |            424 |
-- |       6 | 2025-07-12 | 2026-09-07   |            422 |
-- |       7 | 2025-07-15 | 2026-09-07   |            419 |
-- |       8 | 2025-07-18 | 2026-09-07   |            416 |
-- |       9 | 2025-07-20 | 2026-09-07   |            414 |
-- |      10 | 2025-07-22 | 2026-09-07   |            412 |
-- +---------+------------+--------------+----------------+



-- 9. Format the OrderDate to a more readable format (e.g., 'DD-MMM-YYYY').
select OrderID, Cus_ID, Total_Amount, date_format(Order_date, "%d-%M-%Y") as "Formatted Date" from orders;

-- +---------+--------+--------------+----------------+
-- | OrderID | Cus_ID | Total_Amount | Formatted Date |
-- +---------+--------+--------------+----------------+
-- |       1 |      1 |       150.50 | 01-July-2025   |
-- |       2 |      2 |       850.75 | 03-July-2025   |
-- |       3 |      3 |      1250.00 | 05-July-2025   |
-- |       4 |      4 |       450.25 | 08-July-2025   |
-- |       5 |      5 |      2100.50 | 10-July-2025   |
-- |       6 |      6 |       650.00 | 12-July-2025   |
-- |       7 |      7 |       300.75 | 15-July-2025   |
-- |       8 |      8 |      1750.25 | 18-July-2025   |
-- |       9 |     11 |       950.00 | 20-July-2025   |
-- |      10 |     12 |       500.50 | 22-July-2025   |
-- +---------+--------+--------------+----------------+



-- 10. Concatenate FirstName and LastName to form a full name.
select Cus_ID, concat(FirstName, " ", LastName) as "Full_Name" from customers;

-- +--------+-----------------+
-- | Cus_ID | Full_Name       |
-- +--------+-----------------+
-- |      1 | John Doe        |
-- |      2 | Jane Smith      |
-- |      3 | Michael Brown   |
-- |      4 | Emily Davis     |
-- |      5 | David Wilson    |
-- |      6 | Sarah Miller    |
-- |      7 | Robert Taylor   |
-- |      8 | Olivia Anderson |
-- |      9 | Daniel Thomas   |
-- |     10 | Sophia Moore    |
-- +--------+-----------------+



-- 11. Replace part of a string (e.g., replace 'John' with 'Jonathan').
select Cus_ID, FirstName, LastName, replace(FirstName, "John", "Jonathan") as "Updated Name" from customers;

-- +--------+-----------+----------+--------------+
-- | Cus_ID | FirstName | LastName | Updated Name |
-- +--------+-----------+----------+--------------+
-- |      1 | John      | Doe      | Jonathan     |
-- |      2 | Jane      | Smith    | Jane         |
-- |      3 | Michael   | Brown    | Michael      |
-- |      4 | Emily     | Davis    | Emily        |
-- |      5 | David     | Wilson   | David        |
-- |      6 | Sarah     | Miller   | Sarah        |
-- |      7 | Robert    | Taylor   | Robert       |
-- |      8 | Olivia    | Anderson | Olivia       |
-- |      9 | Daniel    | Thomas   | Daniel       |
-- |     10 | Sophia    | Moore    | Sophia       |
-- +--------+-----------+----------+--------------+



-- 12. Convert FirstName to uppercase and LastName to lowercase.
select Cus_ID, upper(firstname) as "Upper_FirstName", lower(lastname) as "Lower_LastName" from customers;

-- +--------+-----------------+----------------+
-- | Cus_ID | Upper_FirstName | Lower_LastName |
-- +--------+-----------------+----------------+
-- |      1 | JOHN            | doe            |
-- |      2 | JANE            | smith          |
-- |      3 | MICHAEL         | brown          |
-- |      4 | EMILY           | davis          |
-- |      5 | DAVID           | wilson         |
-- |      6 | SARAH           | miller         |
-- |      7 | ROBERT          | taylor         |
-- |      8 | OLIVIA          | anderson       |
-- |      9 | DANIEL          | thomas         |
-- |     10 | SOPHIA          | moore          |
-- +--------+-----------------+----------------+



-- 13. Trim extra spaces from the Email field.
select Cus_ID, Email, trim(Email) as "Clean Email" from customers;

-- +--------+---------------------------+---------------------------+
-- | Cus_ID | Email                     | Clean Email               |
-- +--------+---------------------------+---------------------------+
-- |      1 |  john.doe@email.com       | john.doe@email.com        |
-- |      2 | jane.smith@email.com      | jane.smith@email.com      |
-- |      3 |  michael.brown@email.com  | michael.brown@email.com   |
-- |      4 | emily.davis@email.com     | emily.davis@email.com     |
-- |      5 | david.wilson@email.com    | david.wilson@email.com    |
-- |      6 |  sarah.miller@email.com   | sarah.miller@email.com    |
-- |      7 | robert.taylor@email.com   | robert.taylor@email.com   |
-- |      8 | olivia.anderson@email.com | olivia.anderson@email.com |
-- |      9 | daniel.thomas@email.com   | daniel.thomas@email.com   |
-- |     10 |  sophia.moore@email.com   | sophia.moore@email.com    |
-- +--------+---------------------------+---------------------------+



-- 14. Calculate the running total of TotalAmount for each order.
select OrderID, Order_date, Total_Amount, sum(Total_Amount) over(order by Order_date) as Running_Total from orders;

-- +---------+------------+--------------+---------------+
-- | OrderID | Order_date | Total_Amount | Running_Total |
-- +---------+------------+--------------+---------------+
-- |       1 | 2025-07-01 |       150.50 |        150.50 |
-- |       2 | 2025-07-03 |       850.75 |       1001.25 |
-- |       3 | 2025-07-05 |      1250.00 |       2251.25 |
-- |       4 | 2025-07-08 |       450.25 |       2701.50 |
-- |       5 | 2025-07-10 |      2100.50 |       4802.00 |
-- |       6 | 2025-07-12 |       650.00 |       5452.00 |
-- |       7 | 2025-07-15 |       300.75 |       5752.75 |
-- |       8 | 2025-07-18 |      1750.25 |       7503.00 |
-- |       9 | 2025-07-20 |       950.00 |       8453.00 |
-- |      10 | 2025-07-22 |       500.50 |       8953.50 |
-- +---------+------------+--------------+---------------+



-- 15. Rank orders based on TotalAmount using the RANK() function.
select OrderID, Cus_ID, Total_Amount, rank() over(order by Total_Amount desc) as Order_Rank from orders; 

-- +---------+--------+--------------+------------+
-- | OrderID | Cus_ID | Total_Amount | Order_Rank |
-- +---------+--------+--------------+------------+
-- |       5 |      5 |      2100.50 |          1 |
-- |       8 |      8 |      1750.25 |          2 |
-- |       3 |      3 |      1250.00 |          3 |
-- |       9 |     11 |       950.00 |          4 |
-- |       2 |      2 |       850.75 |          5 |
-- |       6 |      6 |       650.00 |          6 |
-- |      10 |     12 |       500.50 |          7 |
-- |       4 |      4 |       450.25 |          8 |
-- |       7 |      7 |       300.75 |          9 |
-- |       1 |      1 |       150.50 |         10 |
-- +---------+--------+--------------+------------+




-- 16. Assign a discount based on TotalAmount in orders:
--     - More than 1000: 10% discount
--     - More than 500: 5% discount
select OrderID, Cus_ID, Total_Amount,
case 
    when Total_Amount > 1000 then "10% Discount"
    when Total_Amount > 500 then "5% Discount"
    else "-"
end as Discount
from orders;

-- +---------+--------+--------------+--------------+
-- | OrderID | Cus_ID | Total_Amount | Discount     |
-- +---------+--------+--------------+--------------+
-- |       1 |      1 |       150.50 | -            |
-- |       2 |      2 |       850.75 | 5% Discount  |
-- |       3 |      3 |      1250.00 | 10% Discount |
-- |       4 |      4 |       450.25 | -            |
-- |       5 |      5 |      2100.50 | 10% Discount |
-- |       6 |      6 |       650.00 | 5% Discount  |
-- |       7 |      7 |       300.75 | -            |
-- |       8 |      8 |      1750.25 | 10% Discount |
-- |       9 |     11 |       950.00 | 5% Discount  |
-- |      10 |     12 |       500.50 | 5% Discount  |
-- +---------+--------+--------------+--------------+



-- 17. Categorize employees' salaries as High, Medium, or Low.
select Emp_ID, FirstName, LastName, Department, Salary, 
case
    when salary >= 80000 then "High"
    when salary >= 60000 then "Medium"
    else "Low"
end as Salary_Category
from emp;

-- +--------+-----------+----------+------------+--------+-----------------+
-- | Emp_ID | FirstName | LastName | Department | Salary | Salary_Category |
-- +--------+-----------+----------+------------+--------+-----------------+
-- |      1 | Mark      | Johnson  | Sales      |  50000 | Low             |
-- |      2 | Emma      | Williams | HR         |  60000 | Medium          |
-- |      3 | James     | Jones    | IT         |  85000 | High            |
-- |      4 | Sophia    | Brown    | Finance    |  72000 | Medium          |
-- |      5 | William   | Davis    | Sales      |  55000 | Low             |
-- |      6 | Olivia    | Miller   | IT         |  95000 | High            |
-- |      7 | Benjamin  | Wilson   | HR         |  48000 | Low             |
-- |      8 | Ava       | Moore    | Finance    |  78000 | Medium          |
-- |      9 | Henry     | Taylor   | Sales      |  65000 | Medium          |
-- |     10 | Mia       | Anderson | IT         |  45000 | Low             |
-- +--------+-----------+----------+------------+--------+-----------------+