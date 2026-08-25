# 🐬 MySQL Customer & Order Management System

<div align="center">

### 📊 A Practical MySQL SQL Practice Project

**Learn • Practice • Query • Analyze**

A beginner-friendly relational database project built to practice essential **MySQL concepts** using customers, orders, products, and sales data.

</div>

---

## 📖 About

This project is created for learning and practicing **MySQL from beginner to intermediate level**.

Instead of practicing SQL with random examples, this project uses a small **e-commerce style database** where customers place orders and orders contain different products.

You can use the project to understand how SQL works with real-world structured data and how different tables are connected through relationships.

---

## 🎯 Project Goals

The main goals of this project are to practice:

- 🗄️ Creating and managing databases
- 📋 Creating relational tables
- ➕ Inserting records
- 🔎 Retrieving data with `SELECT`
- 🎯 Filtering records with `WHERE`
- 🔤 Searching with `LIKE`
- 🔢 Filtering values with `BETWEEN`
- ↕️ Sorting results with `ORDER BY`
- 🔝 Limiting results with `LIMIT`
- 📊 Using aggregate functions
- 🧩 Grouping records with `GROUP BY`
- 🔑 Understanding primary keys
- 🔗 Understanding foreign keys
- 📦 Working with related business data
- 💰 Calculating sales and order values

---

## 🗂️ Database Structure

The project contains **4 main tables**.

```text
                    ┌──────────────────┐
                    │    Customers     │
                    │──────────────────│
                    │ CustomerID (PK)  │
                    │ Name             │
                    │ Email            │
                    │ Address          │
                    └────────┬─────────┘
                             │
                             │ CustomerID
                             ▼
                    ┌──────────────────┐
                    │      Orders      │
                    │──────────────────│
                    │ OrderID (PK)     │
                    │ CustomerID (FK) │
                    │ OrderDate        │
                    │ TotalAmount      │
                    └────────┬─────────┘
                             │
                             │ OrderID
                             ▼
                    ┌──────────────────┐
                    │  OrderDetails    │
                    │──────────────────│
                    │ OrderdetailsID   │
                    │ OrderID (FK)     │
                    │ ProductID (FK)   │
                    │ Quantity         │
                    │ SubTotal         │
                    └────────┬─────────┘
                             │
                             │ ProductID
                             ▼
                    ┌──────────────────┐
                    │     Products     │
                    │──────────────────│
                    │ ProductID (PK)   │
                    │ ProductName      │
                    │ Price            │
                    │ Stock            │
                    └──────────────────┘
```

---

## 📋 Tables

### 👤 Customers

Stores information about customers.

| Column | Description |
|---|---|
| `CustomerID` | Unique ID for each customer |
| `Name` | Customer's name |
| `Email` | Customer's email |
| `Address` | Customer's address |

---

### 🧾 Orders

Stores information about customer orders.

| Column | Description |
|---|---|
| `OrderID` | Unique ID for each order |
| `CustomerID` | ID of the customer who placed the order |
| `OrderDate` | Date the order was placed |
| `TotalAmount` | Total value of the order |

---

### 🛍️ Products

Stores information about products.

| Column | Description |
|---|---|
| `ProductID` | Unique ID for each product |
| `ProductName` | Name of the product |
| `Price` | Price of the product |
| `Stock` | Available product quantity |

---

### 📦 OrderDetails

Stores the products included in each order.

| Column | Description |
|---|---|
| `OrderdetailsID` | Unique ID for each order detail |
| `OrderID` | Related order ID |
| `ProductID` | Related product ID |
| `Quantity` | Number of products ordered |
| `SubTotal` | Total value for the product in that order |

---

## 🔑 Keys & Relationships

This project demonstrates two important database concepts.

### Primary Key 🔑

A **Primary Key** uniquely identifies every record in a table.

Examples:

```text
Customers     → CustomerID
Orders        → OrderID
Products      → ProductID
OrderDetails  → OrderdetailsID
```

### Foreign Key 🔗

A **Foreign Key** connects one table to another.

Examples:

```text
Orders.CustomerID
        ↓
Customers.CustomerID

OrderDetails.OrderID
        ↓
Orders.OrderID

OrderDetails.ProductID
        ↓
Products.ProductID
```

This allows related information to be stored in separate tables without unnecessarily repeating data.

---

## 🧠 SQL Concepts Practiced

### 🏗️ Database & Table Creation

```sql
CREATE DATABASE
CREATE TABLE
USE
```

### ✏️ Data Manipulation

```sql
INSERT INTO
UPDATE
DELETE
```

### 🔍 Data Retrieval

```sql
SELECT
WHERE
LIKE
BETWEEN
```

### 📊 Sorting & Limiting

```sql
ORDER BY
LIMIT
```

### 📈 Aggregate Functions

```sql
COUNT()
SUM()
AVG()
MAX()
MIN()
```

### 🧮 Grouping

```sql
GROUP BY
```

---

## 🔎 Query Practice

The SQL file contains practical exercises based on the project database.

### 👤 Customer Queries

Examples include:

- Display all customers
- Find customers based on conditions
- Search customer names using `LIKE`
- Update customer information
- Delete customer records

### 🧾 Order Queries

Examples include:

- Display all orders
- Find orders for a specific customer
- Filter orders by amount
- Filter orders by date
- Update order amounts
- Delete orders
- Find the highest order amount
- Find the lowest order amount
- Calculate average order amount

### 🛍️ Product Queries

Examples include:

- Display all products
- Sort products by price
- Find expensive products
- Find cheap products
- Search products
- Filter products within a price range
- Update product prices
- Find products with low or zero stock
- Find the most expensive product
- Find the cheapest product

### 📦 Order Details Queries

Examples include:

- Display order details
- Find products from an order
- Calculate total sales
- Count how many times products were sold
- Find the top 3 most ordered products
- Group sales by product

---

## 🧮 Useful SQL Functions

| Function | Purpose |
|---|---|
| `COUNT()` | Counts records |
| `SUM()` | Calculates a total |
| `AVG()` | Calculates an average |
| `MAX()` | Finds the highest value |
| `MIN()` | Finds the lowest value |

Example:

```sql
SELECT MAX(Price)
FROM Products;
```

This finds the **most expensive product price**.

Another example:

```sql
SELECT SUM(SubTotal)
FROM OrderDetails;
```

This calculates the **total sales value** from order details.

---

## 📌 Important SQL Clauses

### `WHERE`

Used to filter records.

```sql
SELECT *
FROM Products
WHERE Price > 1000;
```

### `LIKE`

Used for pattern searching.

```sql
SELECT *
FROM Customers
WHERE Name LIKE 'A%';
```

### `BETWEEN`

Used to find values within a range.

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

### `ORDER BY`

Used to sort results.

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

### `LIMIT`

Used to restrict the number of results.

```sql
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;
```

### `GROUP BY`

Used to group records for aggregate calculations.

```sql
SELECT ProductID, COUNT(*)
FROM OrderDetails
GROUP BY ProductID;
```

---

## ⚠️ Execution Order

Because the tables are connected using foreign keys, the SQL statements should generally be executed in the correct order.

A typical structure is:

```text
1. Create Database
       ↓
2. Create Customers
       ↓
3. Create Products
       ↓
4. Create Orders
       ↓
5. Create OrderDetails
       ↓
6. Insert Data
       ↓
7. Run Practice Queries
```

---

## 📁 Project Files

```text
📦 MySQL-Customer-Order-Project
│
├── 🐬 main.sql
│
└── 📘 README.md
```

### `main.sql`

Contains the complete SQL database setup, sample data, and practice queries.

### `README.md`

Contains project documentation, database structure, concepts, relationships, and instructions.

---

## 👨‍💻 Author

<div align="center">

### **Ayush Donga**

**MySQL & SQL Practice Project**

A practical project created to build a strong foundation in  
**database design, SQL queries, data manipulation, and data analysis.**

<br>

**🐬 MySQL • 🗄️ Database • 📊 SQL Practice**

</div>

---

<div align="center">

### 🐬 Keep Practicing SQL

**Learn the syntax → Understand the logic → Solve real problems**

⭐ If this project helps you practice MySQL, give it a star!

</div>
