<div align="center">

# 🗄️ MySQL SQL Practice Project

### 💻 Practical Database Design • SQL Queries • Data Analysis

<p>
<img src="https://img.shields.io/badge/MySQL-Database-00758F?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Queries-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/CRUD-Operations-6C63FF?style=for-the-badge">
<img src="https://img.shields.io/badge/JOINs-Relationships-FF6B35?style=for-the-badge">
</p>

<p>
<img src="https://img.shields.io/badge/Subqueries-Advanced_SQL-8E44AD?style=for-the-badge">
<img src="https://img.shields.io/badge/Window_Functions-Analytics-16A085?style=for-the-badge">
<img src="https://img.shields.io/badge/CASE-Conditional_Logic-E67E22?style=for-the-badge">
</p>

<br>

**🏗️ Create → 📝 Insert → 🔍 Query → 🔗 Join → 📊 Analyze → 🧠 Practice**

</div>

---

## ✨ Project Overview

This project is a practical **MySQL SQL practice project** focused on database creation, relational data, query writing, and analytical SQL.

The complete implementation is contained in **`main.sql`**. The file is intended for hands-on practice, where queries can be executed, tested, modified, and studied to understand how SQL works with structured data.

### 🎯 Main Purpose

- 🎓 Practice SQL for college practicals and examinations
- 🧑‍💻 Improve real-world database query skills
- 🧠 Understand SQL query logic step by step
- 🔗 Learn how related tables work together
- 📊 Practice data analysis using SQL
- 🚀 Build a strong foundation for Data Science and AI/ML

> 💡 **Main SQL File:** `main.sql`

---

## 🗂️ Database Structure

### 🗄️ Database

```sql
CREATE DATABASE smart_eventDB;
USE smart_eventDB;
```

### 📊 Tables

| # | 🧩 Table | 📌 Purpose |
|---:|---|---|
| 1️⃣ | `venues` | Defined and used by the SQL project |
| 2️⃣ | `organizers` | Defined and used by the SQL project |
| 3️⃣ | `attendees` | Defined and used by the SQL project |
| 4️⃣ | `events` | Defined and used by the SQL project |
| 5️⃣ | `tickets` | Defined and used by the SQL project |
| 6️⃣ | `payments` | Defined and used by the SQL project |

The database structure provides the foundation for the queries contained in the project. Tables can be connected through keys and relationships, allowing information to be retrieved together using SQL JOINs. 🔗

---

# 🛠️ SQL Concepts Covered

The project contains practical examples of the following concepts:

- 🔹 **Database & Table Creation**
- 🔹 **INSERT & Data Population**
- 🔹 **UPDATE Operations**
- 🔹 **DELETE Operations**
- 🔹 **SELECT Queries**
- 🔹 **Filtering with WHERE**
- 🔹 **DISTINCT**
- 🔹 **ORDER BY**
- 🔹 **GROUP BY & HAVING**
- 🔹 **JOIN Operations**
- 🔹 **Aggregate Functions**
- 🔹 **CASE Expressions**
- 🔹 **Date Functions**
- 🔹 **Window Functions**
- 🔹 **Window Frame / Running Calculations**
- 🔹 **Subqueries**

### 🟢 SQL Learning Path

```text
🗄️ Database & Tables
        ↓
📝 Insert / Modify Data
        ↓
👀 SELECT Data
        ↓
🎯 WHERE Conditions
        ↓
↕️ ORDER BY
        ↓
📊 GROUP BY & Aggregation
        ↓
🔗 JOIN Tables
        ↓
🧠 Subqueries
        ↓
🏷️ CASE Expressions
        ↓
🪟 Window Functions
```

---

# ✏️ CRUD Operations

CRUD represents the four basic operations used when working with database data.

```text
🟢 CREATE → INSERT
🔵 READ   → SELECT
🟡 UPDATE → UPDATE
🔴 DELETE → DELETE
```

### ➕ INSERT

Adds new records to a table.

```sql
INSERT INTO table_name
(column1, column2)
VALUES
(value1, value2);
```

### 👀 SELECT

Retrieves records from a table.

```sql
SELECT *
FROM table_name;
```

### ✏️ UPDATE

Changes existing records.

```sql
UPDATE table_name
SET column1 = value1
WHERE condition;
```

### 🗑️ DELETE

Removes records that match a condition.

```sql
DELETE FROM table_name
WHERE condition;
```

> ⚠️ **Important:** Always verify the `WHERE` condition before executing `UPDATE` or `DELETE`.

---

# 🔍 Query Practice

The main SQL file is designed for practical query writing and execution.

A simple learning process is:

```text
📖 Read the Query
       ↓
🧠 Understand the Logic
       ↓
▶️ Execute the Query
       ↓
📊 Check the Output
       ↓
✏️ Change the Query
       ↓
🔁 Execute Again
```

Try changing conditions, columns, sorting, grouping, or join logic. This makes it easier to understand the effect of each SQL clause instead of only memorizing syntax. 💡

---

# 📊 Aggregate Functions

Aggregate functions perform calculations over multiple rows.

### 🔢 COUNT()

Counts rows.

```sql
SELECT COUNT(*)
FROM table_name;
```

### 📈 AVG()

Calculates an average.

```sql
SELECT AVG(column_name)
FROM table_name;
```

### 🏆 MAX()

Returns the highest value.

```sql
SELECT MAX(column_name)
FROM table_name;
```

### 📉 MIN()

Returns the lowest value.

```sql
SELECT MIN(column_name)
FROM table_name;
```

### ➕ SUM()

Calculates a total.

```sql
SELECT SUM(column_name)
FROM table_name;
```

### 🧩 GROUP BY

Groups records so aggregate calculations can be performed for each category.

```sql
SELECT category, COUNT(*)
FROM table_name
GROUP BY category;
```

### 🎯 HAVING

Filters grouped results.

```sql
SELECT category, COUNT(*)
FROM table_name
GROUP BY category
HAVING COUNT(*) > 1;
```

---

# 🔗 JOIN Operations

JOINs are used to combine related information stored in different tables.

### 🔵 INNER JOIN

Returns records with matching values in both tables.

```sql
SELECT
    a.column_name,
    b.column_name
FROM table_a a
INNER JOIN table_b b
    ON a.id = b.id;
```

### 🟣 LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

```sql
SELECT
    a.column_name,
    b.column_name
FROM table_a a
LEFT JOIN table_b b
    ON a.id = b.id;
```

### 💡 Quick Difference

```text
INNER JOIN
→ Matching records only

LEFT JOIN
→ All records from the left table
→ Matching records from the right table
```

JOINs are an essential part of relational database querying because related information is often stored in separate tables. 🔗📊

---

# 🧠 Subqueries

A **subquery** is a query written inside another SQL query.

Example structure:

```sql
SELECT column_name
FROM table_name
WHERE column_name IN (
    SELECT column_name
    FROM another_table
    WHERE condition
);
```

The inner query is executed as part of the logic of the outer query.

```text
🔍 Outer Query
      │
      ▼
🧠 Inner Query
      │
      ▼
📊 Result
```

Subqueries are useful when one query needs information produced by another query.

---

# 🏷️ CASE Expression

`CASE` is used to apply conditional logic inside a SQL query.

```sql
SELECT
    column_name,
    CASE
        WHEN condition THEN 'Result 1'
        ELSE 'Result 2'
    END AS category
FROM table_name;
```

Conceptually:

```text
Condition TRUE
      ↓
🏷️ Result 1

Condition FALSE
      ↓
🏷️ Result 2
```

It is useful for classification, labels, categories, and conditional results. 🎯

---

# 🗓️ Date & String Functions

SQL functions can transform and extract information from dates and text.

### 📅 Date Functions

```sql
SELECT YEAR(date_column)
FROM table_name;
```

```sql
SELECT CURDATE();
```

```sql
SELECT DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
```

### 🔤 String Functions

`CONCAT()` can combine multiple text values.

```sql
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name
FROM table_name;
```

These functions are useful when database information needs to be transformed into a more meaningful format. ✨

---

# 🪟 Window Functions

Window functions perform calculations across rows while keeping individual rows visible.

Example:

```sql
SELECT
    *,
    COUNT(*) OVER (
        ORDER BY id
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS running_total
FROM table_name;
```

### 💡 GROUP BY vs Window Function

```text
GROUP BY
→ Combines rows into groups
→ Returns grouped results

WINDOW FUNCTION
→ Calculates across rows
→ Keeps individual rows visible
```

Window functions are particularly useful for running totals, rankings, comparisons, and analytical SQL. 📈🧠

---

# 🧪 Recommended Practice Flow

For effective SQL practice, follow this sequence:

```text
🗄️ Understand Database
        ↓
🏗️ Understand Tables
        ↓
📝 Work With Data
        ↓
👀 SELECT Records
        ↓
🎯 WHERE Conditions
        ↓
↕️ ORDER BY
        ↓
📊 GROUP BY + Aggregate Functions
        ↓
🔗 JOIN Tables
        ↓
🧠 Subqueries
        ↓
🗓️ Date & String Functions
        ↓
🏷️ CASE Expressions
        ↓
🪟 Window Functions
        ↓
🚀 Write Your Own Queries
```

> 💡 **Best method:** Run → Check Output → Change One Part → Run Again → Understand.

---

# ▶️ How to Run

## 💻 Requirements

- 🐬 **MySQL Server**
- 🖥️ **MySQL Workbench** or another MySQL editor
- 📄 **`main.sql`**

## 🚀 MySQL Workbench

### 1️⃣ Connect

Open MySQL Workbench and connect to your MySQL Server.

### 2️⃣ Open the SQL File

```text
main.sql
```

### 3️⃣ Run the Setup

Execute the database and table setup statements required by the project.

### 4️⃣ Select the Database

```sql
USE smart_eventDB;
```

### 5️⃣ Check Tables

```sql
SHOW TABLES;
```

### 6️⃣ Check Structure

```sql
DESCRIBE table_name;
```

### 7️⃣ Run Queries

Execute the queries individually and inspect the output in the result grid.

> ⚠️ **Tip:** Run setup statements before executing queries that depend on the created database or tables.

---

# 🔎 Useful MySQL Commands

### 📦 Show Databases

```sql
SHOW DATABASES;
```

### 📋 Show Tables

```sql
SHOW TABLES;
```

### 🔍 Describe a Table

```sql
DESCRIBE table_name;
```

### 👀 View Records

```sql
SELECT *
FROM table_name;
```

These commands are useful for checking the database structure and verifying that the setup is working correctly. 🛠️

---

# 📁 Project Structure

```text
📦 MySQL-SQL-Project
│
├── 📄 main.sql
└── 📘 README.md
```

### 📄 `main.sql`

Contains the actual SQL implementation of the project, including the database structure, data operations, and query practice.

### 📘 `README.md`

Contains the project documentation, SQL explanations, execution instructions, and learning flow.

---

# 📊 Project Statistics

| 📌 Property | 💻 Details |
|---|---|
| 🗄️ Database | `smart_eventDB` |
| 🐬 Technology | MySQL |
| 📄 Main File | `main.sql` |
| 📊 Tables Defined | 6 |
| 🔢 SQL Statements | 73 |
| 📈 SQL Lines | 1007 |

### 🧩 Feature Status

| 🛠️ Feature | 📌 Status |
|---|---|
| 📝 Data Operations | ✅ Included |
| 🔗 JOIN Practice | ✅ Included |
| 🧠 Subqueries | ✅ Included |
| 📊 Aggregate Functions | ✅ Included |
| 🏷️ CASE | ✅ Included |
| 🪟 Window Functions | ✅ Included |

---

# 🎯 Learning Outcomes

After practicing this project, you can strengthen your understanding of:

- 🗄️ Relational database structure
- 🏗️ Database and table creation
- 🔑 Table relationships
- 📝 Data insertion and manipulation
- 🔍 Data retrieval with `SELECT`
- 🎯 Filtering with `WHERE`
- ↕️ Sorting with `ORDER BY`
- 📊 Aggregate functions
- 🧮 `GROUP BY` and `HAVING`
- 🔗 JOIN operations
- 🧠 Subqueries
- 🗓️ Date functions
- 🔤 String functions
- 🏷️ Conditional logic with `CASE`
- 🪟 Window functions
- 📈 Analytical SQL thinking
- 💻 Practical query writing

---

# 📌 Quick Project Summary

| 📌 Property | 💻 Details |
|---|---|
| 🗄️ Database | `smart_eventDB` |
| 🐬 Technology | MySQL |
| 📄 Main File | `main.sql` |
| 📊 Tables | 6 |
| 🔢 SQL Statements | 73 |
| ✏️ Data Operations | ✅ Included |
| 🔗 JOINs | ✅ Included |
| 🧠 Subqueries | ✅ Included |
| 📈 Aggregate Functions | ✅ Included |
| 🏷️ CASE | ✅ Included |
| 🪟 Window Functions | ✅ Included |

---

## 👨‍💻 Author

<div align="center">

### 🌟 Ayush Donga 🌟

**🎓 B.Sc IT Student | 💻 SQL & Database Learner | 🤖 Aspiring AI/ML Engineer**

<br>

`🐬 MySQL` · `💻 SQL` · `📊 Data Analysis` · `🤖 AI/ML`

**📄 Project:** `main.sql`


<br>

### 🚀 Keep Learning • Keep Coding • Keep Improving 🚀

</div>

---

<div align="center">

### ⭐ Built with MySQL, SQL Practice & Learning by Doing

**🐬 💻 📊 🔗 🧠 🪟 🚀**

</div>
