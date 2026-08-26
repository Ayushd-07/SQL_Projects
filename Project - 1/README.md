<div align="center">

# 🐬 Customer Order Management System

### **MySQL • SQL Practice • Relational Database**

A clean, practical SQL project for learning how customers, orders, products, and order details work together in a relational database.

<br>

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Practice-0F766E?style=for-the-badge)
![Beginner](https://img.shields.io/badge/Level-Beginner-2563EB?style=for-the-badge)

</div>

---

## 📌 Overview

**Customer Order Management System** is a beginner-friendly **MySQL practice project** created to build a strong understanding of SQL and relational databases through practical queries.

The project creates a database named `customers_info` and uses four connected tables:

| Table | Purpose |
|:---|:---|
| 👤 `Customers` | Stores customer information |
| 🧾 `Orders` | Stores customer order information |
| 📦 `Products` | Stores product, price, and stock information |
| 🛒 `OrderDetails` | Stores products, quantities, and subtotals for orders |

The complete project is contained in **`main.sql`**, including database creation, table creation, sample records, and **22 SQL practice tasks**.

---

## ✨ Features

- 🗄️ Create and use a MySQL database
- 📂 Create multiple related tables
- 👤 Manage customer records
- 🧾 Manage order records
- 📦 Manage product records
- 🛒 Store order-detail records
- 🔑 Work with primary keys
- 🔗 Work with foreign keys
- ➕ Insert records
- 🔍 Retrieve records with `SELECT`
- ✏️ Update existing records
- 🗑️ Delete records
- 🔎 Search using `LIKE`
- ↔️ Filter using `BETWEEN`
- 📅 Filter records by date
- 📊 Sort using `ORDER BY`
- 🔢 Limit results using `LIMIT`
- 📈 Group records using `GROUP BY`
- 🔢 Count records using `COUNT()`
- 💰 Calculate totals using `SUM()`
- 🏆 Find highest values using `MAX()`
- 📉 Find lowest values using `MIN()`
- 📊 Calculate averages using `AVG()`
- 🧩 Practice table relationships
- 🏆 Analyze the most ordered products
- 💵 Calculate total revenue

---

## 🛠️ Technologies & SQL Concepts

### 💻 Technology

| Technology | Used For |
|:---|:---|
| 🐬 **MySQL** | Database management |
| 📄 **SQL** | Creating, managing, and analyzing data |

### 📚 SQL Concepts

```text
CREATE DATABASE     USE
CREATE TABLE        INSERT INTO
SELECT              UPDATE
DELETE              WHERE
LIKE                BETWEEN
ORDER BY            GROUP BY
LIMIT               COUNT()
SUM()               MAX()
MIN()               AVG()
PRIMARY KEY         FOREIGN KEY
AUTO_INCREMENT      NOT NULL
UNIQUE
```

---

## 🗄️ Database Structure

### Database

```text
customers_info
```

### Tables

```text
customers_info
│
├── 👤 Customers
│
├── 🧾 Orders
│
├── 📦 Products
│
└── 🛒 OrderDetails
```

---

## 📊 Table Details

### 👤 Customers

Stores the basic information of customers.

```text
Customers
├── CustomerID
├── Name
├── Email
└── Address
```

| Column | Description |
|:---|:---|
| `CustomerID` | Unique customer ID |
| `Name` | Customer name |
| `Email` | Customer email |
| `Address` | Customer address |

---

### 🧾 Orders

Stores information about customer orders.

```text
Orders
├── OrderID
├── CustomerID
├── OrderDate
└── TotalAmount
```

| Column | Description |
|:---|:---|
| `OrderID` | Unique order ID |
| `CustomerID` | Customer who placed the order |
| `OrderDate` | Date when the order was placed |
| `TotalAmount` | Total value of the order |

---

### 📦 Products

Stores product and inventory information.

```text
Products
├── ProductID
├── ProductName
├── Price
└── Stock
```

| Column | Description |
|:---|:---|
| `ProductID` | Unique product ID |
| `ProductName` | Product name |
| `Price` | Product price |
| `Stock` | Available quantity |

---

### 🛒 OrderDetails

Stores the products included in individual orders.

```text
OrderDetails
├── OrderdetailsID
├── OrderID
├── ProductID
├── Quantity
└── SubTotal
```

| Column | Description |
|:---|:---|
| `OrderdetailsID` | Unique order-detail ID |
| `OrderID` | Related order ID |
| `ProductID` | Related product ID |
| `Quantity` | Quantity purchased |
| `SubTotal` | Total value for the item quantity |

---

## 🔗 Table Relationships

The four tables are connected using primary-key and foreign-key relationships.

```text
                    👤 Customers
                         │
                         │ CustomerID
                         ▼
                     🧾 Orders
                         │
                         │ OrderID
                         ▼
                  🛒 OrderDetails
                         ▲
                         │ ProductID
                         │
                     📦 Products
```

### Relationships

| From | Key | To |
|:---|:---|:---|
| `Customers` | `CustomerID` | `Orders.CustomerID` |
| `Orders` | `OrderID` | `OrderDetails.OrderID` |
| `Products` | `ProductID` | `OrderDetails.ProductID` |

This structure allows customer orders and purchased products to be connected without storing the same information repeatedly.

---

## 📋 22 SQL Practice Tasks

### 👤 Customers

| # | Practice Task |
|:---:|:---|
| **01** | Insert sample customers |
| **02** | Retrieve all customer details |
| **03** | Update a customer's address |
| **04** | Delete a customer using `CustomerID` |
| **05** | Find customers whose name starts with **Alice** |

### 🧾 Orders

| # | Practice Task |
|:---:|:---|
| **06** | Insert sample orders |
| **07** | Retrieve orders for a specific customer |
| **08** | Update an order's total amount |
| **09** | Delete an order using `OrderID` |
| **10** | Retrieve orders placed during the selected 30-day period |
| **11** | Find the highest, lowest, and average order amount |

### 📦 Products

| # | Practice Task |
|:---:|:---|
| **12** | Insert sample products |
| **13** | Display products sorted by price in descending order |
| **14** | Update a product price |
| **15** | Delete products that are out of stock |
| **16** | Find products priced between `500` and `2000` |
| **17** | Find the most expensive and cheapest products |

### 🛒 Order Details

| # | Practice Task |
|:---:|:---|
| **18** | Insert sample order-detail records |
| **19** | Retrieve details for a specific order |
| **20** | Calculate total revenue using `SUM()` |
| **21** | Find the top 3 most ordered products |
| **22** | Count how many times products have been sold |

---

## ▶️ How to Run

### 1. Open MySQL

Use **MySQL Workbench**, MySQL Command Line, or another MySQL-compatible client.

### 2. Open `main.sql`

```text
main.sql
```

### 3. Create the database

The project starts with:

```sql
CREATE DATABASE customers_info;

USE customers_info;
```

### 4. Run the SQL statements

Execute the statements in `main.sql` in order.

This will create the required tables, insert the sample records, and provide the practice queries.

### 5. Verify the database

```sql
SHOW DATABASES;

USE customers_info;

SHOW TABLES;
```

You can then check the records:

```sql
SELECT * FROM Customers;

SELECT * FROM Orders;

SELECT * FROM Products;

SELECT * FROM OrderDetails;
```

---

## 🧪 Example Queries

### 🔎 Search Customers with `LIKE`

```sql
SELECT *
FROM Customers
WHERE Name LIKE 'Alice%';
```

Finds customers whose names start with `Alice`.

---

### ↔️ Filter Products with `BETWEEN`

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

Finds products within the selected price range.

---

### 📊 Sort Products by Price

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

Displays the most expensive products first.

---

### 💰 Highest Order Amount

```sql
SELECT MAX(TotalAmount) AS Highest_Amount
FROM Orders;
```

---

### 📉 Lowest Order Amount

```sql
SELECT MIN(TotalAmount) AS Lowest_Amount
FROM Orders;
```

---

### 📊 Average Order Amount

```sql
SELECT AVG(TotalAmount) AS Average_Amount
FROM Orders;
```

---

### 💵 Total Revenue

```sql
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;
```

---

### 🏆 Top 3 Most Ordered Products

```sql
SELECT ProductID,
       SUM(Quantity) AS Total_Ordered
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Ordered DESC
LIMIT 3;
```

---

### 🔢 Count Product Sales

```sql
SELECT ProductID,
       COUNT(*) AS Times_Sold
FROM OrderDetails
GROUP BY ProductID;
```

---

## 📈 Aggregate Functions

The project uses aggregate functions to turn stored records into useful information.

| Function | Purpose | Example |
|:---|:---|:---|
| `COUNT()` | Counts records | Number of sales |
| `SUM()` | Adds values | Total revenue |
| `MAX()` | Finds highest value | Highest order |
| `MIN()` | Finds lowest value | Cheapest value |
| `AVG()` | Finds average value | Average order |

Example:

```sql
SELECT
    COUNT(*) AS Total_Orders,
    SUM(TotalAmount) AS Total_Sales,
    MAX(TotalAmount) AS Highest_Order,
    MIN(TotalAmount) AS Lowest_Order,
    AVG(TotalAmount) AS Average_Order
FROM Orders;
```

---

## 🔎 Filtering & Sorting

### `WHERE`

Filters records based on a condition.

```sql
SELECT *
FROM Products
WHERE Stock > 0;
```

### `LIKE`

Searches text using a pattern.

```sql
SELECT *
FROM Customers
WHERE Name LIKE 'Alice%';
```

### `BETWEEN`

Filters values inside a range.

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

### `ORDER BY`

Sorts the query result.

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

### `LIMIT`

Restricts the number of results.

```sql
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;
```

---

## 📊 GROUP BY

`GROUP BY` is used to combine records with the same value and perform calculations for each group.

Example:

```sql
SELECT ProductID,
       SUM(Quantity) AS Total_Ordered
FROM OrderDetails
GROUP BY ProductID;
```

This groups the order-detail records by product and calculates the total quantity ordered for each product.

---

## 🔑 Keys

### Primary Key

A primary key uniquely identifies each record.

```text
Customers.CustomerID
Orders.OrderID
Products.ProductID
OrderDetails.OrderdetailsID
```

### Foreign Key

A foreign key connects one table to another.

```text
Orders.CustomerID
OrderDetails.OrderID
OrderDetails.ProductID
```

Together, these keys help maintain relationships between the database tables.

---

## 🧠 Project Learning Flow

```text
CREATE DATABASE
       ↓
CREATE TABLES
       ↓
DEFINE KEYS
       ↓
INSERT DATA
       ↓
SELECT DATA
       ↓
FILTER DATA
       ↓
SORT DATA
       ↓
GROUP DATA
       ↓
ANALYZE DATA
       ↓
UPDATE DATA
       ↓
DELETE DATA
```

This project follows a practical learning flow so each SQL concept can be understood through actual database records.

---

## 📂 Project Structure

```text
Customer-Order-Management/
│
├── 🐬 main.sql
└── 📘 README.md
```

### 🐬 `main.sql`

Contains the complete MySQL project:

- Database creation
- Table creation
- Table relationships
- Sample records
- SQL practice queries

### 📘 `README.md`

Contains the project documentation, database structure, relationships, concepts, examples, and setup instructions.

---

## 🎯 Learning Outcomes

After completing this project, you will have practical experience with:

- Creating databases
- Creating tables
- Defining columns
- Using primary keys
- Using foreign keys
- Inserting records
- Selecting records
- Updating records
- Deleting records
- Filtering records
- Searching with `LIKE`
- Filtering with `BETWEEN`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`
- Grouping with `GROUP BY`
- Counting with `COUNT()`
- Calculating totals with `SUM()`
- Finding maximum values with `MAX()`
- Finding minimum values with `MIN()`
- Calculating averages with `AVG()`
- Understanding relational database structure
- Performing basic order and product analysis

---

## 👨‍💻 About the Author

<div align="center">

# **AYUSH DONGA**

### 🎓 BSc IT Student  
### 💻 SQL & Programming Learner  
### 🐬 MySQL Enthusiast

<br>

| 🌱 Learning | 🛠️ Working With | 🎯 Focus |
|:---:|:---:|:---:|
| SQL & Databases | MySQL & Programming | Practical Projects |

<br>

> **“Learn → Practice → Build → Improve”**

<br>

This project is part of my hands-on learning journey with **SQL and MySQL**, focused on understanding database concepts by writing and testing practical queries.

</div>

---

<div align="center">

### ⭐ If this project helped you learn SQL, consider giving it a star.

**🐬 Made with SQL + MySQL**

**Learn → Practice → Query → Improve**

</div>
