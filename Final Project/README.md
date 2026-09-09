<div align="center">

# 🎓 College Database Management System

### 🗄️ A MySQL-Based College Database with SQL Queries & Data Analysis Practice

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

**🏗️ Design Database → 📝 Insert Data → 🔍 Query Data → 🔗 Join Tables → 📊 Analyze Results**

</div>

---

## ✨ Project Overview

The **College Database Management System** is a practical MySQL project
created to demonstrate how a relational database can be designed,
populated, queried, and analyzed.

The project represents a simple college environment containing:

| 🧩 Module | 📌 Purpose |
|---|---|
| 👨‍🎓 **Students** | Stores student information and enrollment details |
| 📚 **Courses** | Stores courses and credit information |
| 👩‍🏫 **Instructors** | Stores instructor details and salaries |
| 🏢 **Departments** | Stores college department information |
| 📝 **Enrollments** | Connects students with courses |

> 💡 **Main SQL File:** `main.sql`

This project is useful for **SQL learning, practical examination
preparation, database laboratory work, assignments, and portfolio
practice**. 🚀

---

## 🗂️ Database Structure

### 🏷️ Database Name

```sql
CREATE DATABASE college_db;
USE college_db;
```

### 📊 Main Tables

```text
🏢 departments
      │
      ├───────────────┐
      │               │
      ▼               ▼
👨‍🎓 students     👩‍🏫 instructors
      │
      ▼
📝 enrollments
      ▲
      │
      ▼
📚 courses
```

The tables are connected using IDs so that related information can be
retrieved through SQL JOINs and subqueries. 🔗

---

## 🏗️ Table Details

### 👨‍🎓 `students`

Stores basic student information.

| Column | Type | Purpose |
|---|---|---|
| `StuID` | `INT` | Primary key |
| `FirstName` | `VARCHAR` | Student first name |
| `LastName` | `VARCHAR` | Student last name |
| `Email` | `VARCHAR` | Student email |
| `BirthDate` | `DATE` | Date of birth |
| `EnrollmentDate` | `DATE` | College enrollment date |

The database contains **10 initial student records**. 🎓

### 📚 `courses`

Stores courses offered by the college.

| Column | Type | Purpose |
|---|---|---|
| `CourseID` | `INT` | Primary key |
| `CourseName` | `VARCHAR` | Course name |
| `DeptID` | `INT` | Department identifier |
| `Credits` | `INT` | Course credits |

Example courses include SQL, Data Structures, Database Management,
Python Programming, Machine Learning, Artificial Intelligence,
Statistics, Data Science, Data Analytics, and Cyber Security. 🤖

### 👩‍🏫 `instructors`

Stores instructor information.

| Column | Type | Purpose |
|---|---|---|
| `InstructorID` | `INT` | Primary key |
| `FirstName` | `VARCHAR` | First name |
| `LastName` | `VARCHAR` | Last name |
| `Email` | `VARCHAR` | Instructor email |
| `DeptID` | `INT` | Department identifier |
| `Salary` | `DECIMAL(10,2)` | Instructor salary |

### 📝 `enrollments`

Connects students with courses.

| Column | Type | Purpose |
|---|---|---|
| `EnrollmentID` | `INT` | Primary key |
| `StuID` | `INT` | Student identifier |
| `CourseID` | `INT` | Course identifier |
| `EnrollmentDate` | `DATE` | Enrollment date |

This table is heavily used in JOIN and subquery examples. 🔗

### 🏢 `departments`

Stores department information.

| Column | Type | Purpose |
|---|---|---|
| `DeptID` | `INT` | Primary key |
| `DeptName` | `VARCHAR` | Department name |

---

# 🛠️ SQL Concepts Covered

### 🟢 Basic SQL

```text
CREATE DATABASE
CREATE TABLE
INSERT
SELECT
WHERE
UPDATE
DELETE
LIMIT
```

### 🟡 Intermediate SQL

```text
JOIN
INNER JOIN
LEFT JOIN
GROUP BY
HAVING
COUNT()
AVG()
MAX()
IN
DISTINCT
```

### 🔴 Advanced SQL Practice

```text
Subqueries
Nested Subqueries
Date Functions
String Functions
CASE
Window Functions
```

---

# ✏️ CRUD Operations

CRUD represents the four basic database operations:

```text
🟢 CREATE → INSERT
🔵 READ   → SELECT
🟡 UPDATE → UPDATE
🔴 DELETE → DELETE
```

### ➕ INSERT

```sql
INSERT INTO students
(FirstName, LastName, Email, EnrollmentDate)
VALUES
('Rahul', 'Shah', 'rahul@example.com', '2025-07-01');
```

### 👀 SELECT

```sql
SELECT *
FROM students;
```

### ✏️ UPDATE

```sql
UPDATE students
SET Email = 'newemail@example.com'
WHERE StuID = 1;
```

### 🗑️ DELETE

```sql
DELETE FROM students
WHERE StuID = 1;
```

> ⚠️ Always verify your `WHERE` condition before using `UPDATE` or
> `DELETE`.

---

# 🔍 Query Practice

The `main.sql` file contains **16 main query tasks**.

| # | 🔎 Task | 🧠 Concept |
|---:|---|---|
| 1️⃣ | CRUD operations | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| 2️⃣ | Students enrolled after 2022 | `WHERE` |
| 3️⃣ | Mathematics department courses | `JOIN`, `LIMIT` |
| 4️⃣ | Courses with more than 5 students | `COUNT`, `GROUP BY`, `HAVING` |
| 5️⃣ | Students in both SQL and Data Structures | `JOIN`, `IN`, `DISTINCT` |
| 6️⃣ | Students in SQL or Data Structures | `IN` |
| 7️⃣ | Average course credits | `AVG()` |
| 8️⃣ | Maximum CS instructor salary | `MAX()` |
| 9️⃣ | Students in each department | `LEFT JOIN`, `COUNT` |
| 🔟 | Students and courses | `INNER JOIN` |
| 1️⃣1️⃣ | All students and courses | `LEFT JOIN` |
| 1️⃣2️⃣ | Students in highly enrolled courses | Nested Subquery |
| 1️⃣3️⃣ | Enrollment year | `YEAR()` |
| 1️⃣4️⃣ | Full name creation | `CONCAT()` |
| 1️⃣5️⃣ | Running enrollment total | Window Function |
| 1️⃣6️⃣ | Senior / Junior classification | `CASE` |

---

## 📊 Aggregate Functions

### 🔢 `COUNT()`

Counts records.

```sql
SELECT COUNT(*) AS TotalStudents
FROM students;
```

### 📈 `AVG()`

Calculates an average.

```sql
SELECT AVG(Credits) AS AverageCredits
FROM courses;
```

### 🏆 `MAX()`

Finds the highest value.

```sql
SELECT MAX(Salary) AS MaximumSalary
FROM instructors;
```

These functions are useful for converting database records into useful
summary information. 📊

---

## 🔗 JOIN Examples

### 🔵 INNER JOIN

Returns matching records from related tables.

```sql
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName
FROM students s
INNER JOIN enrollments e
    ON s.StuID = e.StuID
INNER JOIN courses c
    ON e.CourseID = c.CourseID;
```

### 🟣 LEFT JOIN

Keeps all records from the left table.

```sql
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName
FROM students s
LEFT JOIN enrollments e
    ON s.StuID = e.StuID
LEFT JOIN courses c
    ON e.CourseID = c.CourseID;
```

### 💡 Quick Difference

```text
INNER JOIN
→ Only matching records

LEFT JOIN
→ All records from the left table
  + matching records from the right table
```

---

## 🧠 Subquery Example

A nested subquery can be used to find students based on course
enrollment conditions.

```sql
SELECT *
FROM students
WHERE StuID IN (
    SELECT StuID
    FROM enrollments
    WHERE CourseID IN (
        SELECT CourseID
        FROM enrollments
        GROUP BY CourseID
        HAVING COUNT(*) > 10
    )
);
```

A **subquery** is a query written inside another query. 🧩

---

## 🗓️ Date Functions

### `YEAR()`

```sql
SELECT
    StuID,
    FirstName,
    LastName,
    YEAR(EnrollmentDate) AS EnrollmentYear
FROM students;
```

### `CURDATE()`

Returns the current date.

```sql
SELECT CURDATE();
```

### `DATE_SUB()`

Subtracts a specified time interval.

```sql
SELECT DATE_SUB(CURDATE(), INTERVAL 4 YEAR);
```

---

## 🔤 String Functions

The project uses `CONCAT()` to combine first and last names.

```sql
SELECT
    StuID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM students;
```

Example:

```text
FirstName → Ayush
LastName  → Donga
FullName  → Ayush Donga
```

---

## 🪟 Window Function

The project includes a running total using a Window Function.

```sql
SELECT
    *,
    COUNT(*) OVER (
        ORDER BY EnrollmentID
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningTotalStudents
FROM enrollments;
```

### 💡 Window Function vs GROUP BY

```text
GROUP BY
→ Combines rows into groups.

WINDOW FUNCTION
→ Calculates across rows while keeping
  individual rows visible.
```

This is an important step from basic SQL toward analytical SQL. 📈

---

## 🏷️ CASE Expression

The project classifies students using conditional logic.

```sql
SELECT
    StuID,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
            THEN 'Senior'
        ELSE 'Junior'
    END AS StudentLevel
FROM students;
```

Conceptually:

```text
Condition TRUE  → Senior
Condition FALSE → Junior
```

---

# 🧪 Recommended Practice Flow

```text
🏗️ Create Database
        ↓
🏢 Create Tables
        ↓
📝 Insert Records
        ↓
👀 SELECT Data
        ↓
✏️ Practice CRUD
        ↓
🎯 Use WHERE & LIMIT
        ↓
📊 Aggregate Data
        ↓
🔗 Practice JOINs
        ↓
🧠 Practice Subqueries
        ↓
🗓️ Date & String Functions
        ↓
🪟 Window Functions
        ↓
🏷️ CASE Expressions
        ↓
🚀 Create Your Own Queries
```

> 💡 **Best way to learn:** Run the query → check the output → change one
> condition → run it again → understand the difference.

---

# ▶️ How to Run

## 💻 Requirements

- 🐬 **MySQL Server**
- 🖥️ **MySQL Workbench** or another SQL editor
- 📄 **`main.sql`**

## 🚀 MySQL Workbench

**1️⃣ Connect**

Open MySQL Workbench and connect to your MySQL server.

**2️⃣ Open the file**

```text
main.sql
```

**3️⃣ Execute the script**

Run the database setup and sample data.

**4️⃣ Select the database**

```sql
USE college_db;
```

**5️⃣ Check tables**

```sql
SHOW TABLES;
```

**6️⃣ Check table structure**

```sql
DESCRIBE students;
```

**7️⃣ Run the queries**

Execute the practice queries individually to understand their output.

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
DESCRIBE courses;
```

### 👨‍🎓 View Students

```sql
SELECT * FROM students;
```

### 📚 View Courses

```sql
SELECT * FROM courses;
```

### 🏢 View Departments

```sql
SELECT * FROM departments;
```

### 📝 View Enrollments

```sql
SELECT * FROM enrollments;
```

---

# 📁 Project Structure

```text
📦 College-Database-Management-System
│
├── 📄 main.sql
└── 📄 README.md
```

### 📄 `main.sql`

Contains the complete SQL implementation:

```text
🗄️ Database creation
🏗️ Table creation
🔑 Keys and constraints
📝 Sample records
✏️ CRUD operations
🔍 Query practice
📊 Aggregate functions
🔗 JOIN operations
🧠 Subqueries
🗓️ Date functions
🔤 String functions
🪟 Window functions
🏷️ CASE expressions
📌 Query outputs/comments
```

---

# 🎯 Learning Outcomes

After completing this project, you will have practical experience with:

- 🗄️ Creating a relational MySQL database
- 🏗️ Designing connected tables
- 🔑 Understanding primary and foreign keys
- 📝 Inserting structured records
- 🔍 Filtering records with `WHERE`
- ✏️ Performing CRUD operations
- 📊 Using aggregate functions
- 🧮 Grouping and filtering data
- 🔗 Combining tables with JOINs
- 🧠 Writing subqueries
- 🗓️ Working with SQL dates
- 🔤 Manipulating strings
- 🪟 Using Window Functions
- 🏷️ Creating conditional results with `CASE`

---

# 📌 Quick Project Summary

| 📌 Property | 💻 Details |
|---|---|
| 🗄️ Database | `college_db` |
| 🐬 Technology | MySQL |
| 📄 Main File | `main.sql` |
| 📊 Tables | 5 |
| 📝 Sample Data | Included |
| ✏️ CRUD | Included |
| 🔗 JOINs | Included |
| 🧠 Subqueries | Included |
| 📈 Aggregate Functions | Included |
| 🗓️ Date Functions | Included |
| 🔤 String Functions | Included |
| 🪟 Window Functions | Included |
| 🏷️ CASE | Included |
| 🔢 Main Queries | 16 |

---

## 👨‍💻 Author

<div align="center">

### 🌟 Ayush Donga 🌟

**B.Sc IT Student | Aspiring AI/ML Engineer 🤖**

`🐬 MySQL` · `🐍 Python` · `📊 Data Science` · `🤖 AI/ML`

**📄 Project:** `main.sql`

</div>

---

<div align="center">

### ⭐ Built with MySQL, SQL practice & learning by doing.

**🐬💻 Happy Learning & Happy Querying! 📚🚀**

</div>
