# 🗄️ MySQL SQL Practice Project

<div align="center">

### 📊 Customer • Orders • Employees • SQL Analytics

**A practical MySQL project for learning and practicing JOINs, Subqueries, Date Functions, String Functions, CASE Statements & Window Functions.**

<br>

![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-336791?style=for-the-badge)
![Practice](https://img.shields.io/badge/Project-SQL%20Practice-success?style=for-the-badge)

</div>

---

## ✨ About This Project

This project is a **hands-on MySQL practice database** designed to build a strong understanding of commonly used SQL concepts.

The `main.sql` file creates sample **Customers, Orders, and Employees** tables, inserts realistic practice records, and contains **17 SQL questions with their solutions and outputs**.

It is suitable for beginners who want to move beyond basic `SELECT` queries and practice SQL concepts that are commonly used in **data analysis, backend development, reporting, and technical interviews**.

---

## 🧩 Database Structure

The project uses three main tables:

| 🗂️ Table | 📌 Purpose | 🔢 Records |
|---|---|---:|
| 👥 `customers` | Stores customer information | 10 |
| 🛒 `orders` | Stores customer order information | 10 |
| 👨‍💼 `emp` | Stores employee and salary information | 10 |

### 👥 Customers

Contains:

- `Cus_ID` → Primary key with `AUTO_INCREMENT`
- `FirstName`
- `LastName`
- `Email`
- `RegistrationDate`

### 🛒 Orders

Contains:

- `OrderID` → Primary key with `AUTO_INCREMENT`
- `Cus_ID`
- `Order_date`
- `Total_Amount`

The data intentionally includes order records whose customer IDs do not exist in the `customers` table, making the JOIN examples more useful for understanding unmatched records.

### 👨‍💼 Employees

Contains:

- `Emp_ID` → Primary key with `AUTO_INCREMENT`
- `FirstName`
- `LastName`
- `Department`
- `Hire_date`
- `Salary`

---

## 📚 SQL Concepts Covered

The project provides practical examples of:

- 🔗 **INNER JOIN**
- ⬅️ **LEFT JOIN**
- ➡️ **RIGHT JOIN**
- 🔄 **FULL OUTER JOIN simulation using `UNION`**
- 🔍 **Subqueries**
- 📅 **Date and time functions**
- 🗓️ **`YEAR()` and `MONTH()`**
- ⏱️ **`DATEDIFF()`**
- 📝 **`DATE_FORMAT()`**
- 🔤 **`CONCAT()`**
- 🔁 **`REPLACE()`**
- 🔠 **`UPPER()` and `LOWER()`**
- ✂️ **`TRIM()`**
- 📈 **Running totals with window functions**
- 🏆 **`RANK()`**
- 🧠 **`CASE` statements**
- 💰 **Salary categorization**
- 🎟️ **Order discount classification**

---

## 📝 Practice Questions Included

`main.sql` contains **17 practical SQL questions**, progressing from JOIN operations to more advanced SQL techniques.

| # | 🎯 Topic |
|---:|---|
| 01 | 🔗 INNER JOIN between customers and orders |
| 02 | ⬅️ LEFT JOIN to display all customers |
| 03 | ➡️ RIGHT JOIN to display unmatched records |
| 04 | 🔄 FULL OUTER JOIN using `LEFT JOIN + RIGHT JOIN + UNION` |
| 05 | 🔍 Subquery for orders above average order value |
| 06 | 💰 Subquery for employees above average salary |
| 07 | 📅 Extract year and month from order dates |
| 08 | ⏱️ Calculate days between order date and current date |
| 09 | 🗓️ Format order dates into a readable format |
| 10 | 👤 Concatenate first and last names |
| 11 | ✏️ Replace a specific name using `REPLACE()` |
| 12 | 🔠 Convert names to uppercase/lowercase |
| 13 | 🧹 Remove extra spaces from emails using `TRIM()` |
| 14 | 📈 Calculate a running order total |
| 15 | 🏆 Rank orders using `RANK()` |
| 16 | 🎟️ Assign discounts using `CASE` |
| 17 | 💼 Categorize employee salaries |

---

## 🚀 How to Run

### 1️⃣ Open MySQL

You can use any MySQL-compatible environment such as:

- MySQL Workbench
- MySQL Command Line
- phpMyAdmin
- XAMPP
- Other MySQL database tools

### 2️⃣ Create or select the database

The script begins with:

```sql
USE company;
```

Make sure the `company` database exists before executing the file.

If required, create it first:

```sql
CREATE DATABASE company;
USE company;
```

### 3️⃣ Run `main.sql`

Open the **`main.sql`** file and execute the script.

It will:

1. Select the `company` database
2. Create the `customers` table
3. Insert customer records
4. Create the `orders` table
5. Insert order records
6. Create the `emp` table
7. Insert employee records
8. Run the SQL practice questions
9. Display the expected query results

---

## 💡 Learning Outcome

After completing this project, you should be more comfortable with:

**Tables → Relationships → JOINs → Subqueries → Functions → CASE → Window Functions**

The examples are intentionally small so that the query logic is easy to understand and test. You can modify the records, change conditions, create additional queries, and experiment with different JOIN and filtering combinations.

This makes `main.sql` useful as a **SQL revision file, practice dataset, and interview preparation resource**.

---

## 📁 Project File

```text
SQL-Project/
│
└── 📄 main.sql
```

### 📄 `main.sql`

The main SQL script containing the database setup, sample data, practice questions, queries, and output examples.

---

## 👨‍💻 Author

<div align="center">

# **Ayush Donga** 💻

### 🎓 B.Sc IT Student | 💡 Aspiring AI/ML Engineer | 📊 Data & SQL Enthusiast

**Building skills in SQL, Python, Data Science, AI & Machine Learning.**

<br>

⭐ **Learning • Practicing • Building • Improving** ⭐

</div>

---

<div align="center">

### ⭐ If this project helped you learn SQL, feel free to star it!

**Made with 💙 and lots of SQL practice 🗄️**

</div>
