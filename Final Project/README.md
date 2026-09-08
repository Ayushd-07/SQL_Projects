# 🎓 College Database Management System

> 🗄️ **A practical MySQL database project for managing students,
> courses, instructors, departments, and enrollments.**

This project demonstrates core and intermediate **MySQL / SQL concepts**
through a complete college database scenario. It includes database and
table creation, sample records, CRUD operations, filtering, aggregation,
subqueries, joins, date functions, string functions, window functions,
and conditional logic.

The complete SQL source is provided in **`main.sql`**, making the
project easy to run, study, practice, and extend. 🚀

------------------------------------------------------------------------

## ✨ Project Overview

The **College Database Management System** models a simple academic
environment where different entities are connected through structured
relational tables.

The database contains information about:

-   👨‍🎓 **Students** and their academic enrollment details
-   📚 **Courses** offered by different departments
-   👩‍🏫 **Instructors** and their departments and salaries
-   🏢 **Departments** within the college
-   📝 **Enrollments** connecting students with courses

The project is designed not only as a database implementation, but also
as a **SQL practice project**. Each query focuses on a specific SQL
concept so that the code can be used for learning, revision,
assignments, and portfolio practice. 💻📊

------------------------------------------------------------------------

## 🗂️ Database Structure

The database is named:

``` sql
college_db
```

### 👨‍🎓 `students`

Stores the basic information of college students.

  Column             Type            Description
  ------------------ --------------- -------------------------------------
  `StuID`            `INT`           Primary key with auto-increment
  `FirstName`        `VARCHAR(50)`   Student's first name
  `LastName`         `VARCHAR(50)`   Student's last name
  `Email`            `VARCHAR(50)`   Unique student email
  `BirthDate`        `DATE`          Student's date of birth
  `EnrollmentDate`   `DATE`          Date the student joined the college

The table contains **10 initial student records**. 🎓

### 📚 `courses`

Stores information about courses available in the college.

  Column         Type            Description
  -------------- --------------- ---------------------------------
  `CourseID`     `INT`           Primary key with auto-increment
  `CourseName`   `VARCHAR(50)`   Name of the course
  `DeptID`       `INT`           Department identifier
  `Credits`      `INT`           Number of course credits

Example courses include **Introduction to SQL, Data Structures, Database
Management, Python Programming, Machine Learning, Artificial
Intelligence, Statistics, Data Science, Data Analytics, and Cyber
Security**. 🤖📘

### 👩‍🏫 `instructors`

Stores instructor information, department assignment, and salary.

  Column           Type              Description
  ---------------- ----------------- ---------------------------------
  `InstructorID`   `INT`             Primary key with auto-increment
  `FirstName`      `VARCHAR(50)`     Instructor's first name
  `LastName`       `VARCHAR(50)`     Instructor's last name
  `Email`          `VARCHAR(50)`     Unique instructor email
  `DeptID`         `INT`             Department identifier
  `Salary`         `DECIMAL(10,2)`   Instructor salary

The table demonstrates how numeric values such as salary can be stored
accurately using the `DECIMAL` data type. 💰

### 📝 `enrollments`

Connects students with the courses they are enrolled in.

  Column             Type     Description
  ------------------ -------- ---------------------------------
  `EnrollmentID`     `INT`    Primary key with auto-increment
  `StuID`            `INT`    Student identifier
  `CourseID`         `INT`    Course identifier
  `EnrollmentDate`   `DATE`   Date of enrollment

This table is important for demonstrating relationships between students
and courses and is used heavily in the JOIN and subquery examples. 🔗

### 🏢 `departments`

Stores the departments available in the college.

  Column       Type            Description
  ------------ --------------- ---------------------------------
  `DeptID`     `INT`           Primary key with auto-increment
  `DeptName`   `VARCHAR(50)`   Department name

The sample database includes departments such as **Computer Science,
Mathematics, Information Technology, Data Science, Artificial
Intelligence, Physics, Chemistry, Commerce, Business Administration, and
Cyber Security**. 🏫

------------------------------------------------------------------------

## 🛠️ SQL Concepts Demonstrated

This project covers a useful range of SQL concepts and shows how they
work with realistic academic data.

### 1. 🏗️ Database & Table Creation

The script first creates the database and selects it for use:

``` sql
CREATE DATABASE college_db;
USE college_db;
```

It then creates five related tables using appropriate data types,
primary keys, unique constraints, and auto-increment columns.

### 2. ➕ Data Insertion

Sample records are inserted into every table using `INSERT INTO`.

This provides enough data to execute and understand the queries without
manually entering records one by one.

### 3. 🔍 Data Retrieval

The project uses `SELECT` statements to retrieve complete tables as well
as filtered records.

For example:

``` sql
SELECT * FROM students;
```

The script also uses `WHERE` conditions to retrieve specific records
based on requirements.

### 4. ✏️ CRUD Operations

The first major query demonstrates **CRUD** operations:

-   🟢 **Create** using `INSERT`
-   🔵 **Read** using `SELECT`
-   🟡 **Update** using `UPDATE`
-   🔴 **Delete** using `DELETE`

CRUD examples are included for students, courses, instructors, and
enrollments.

### 5. 🎯 Filtering with `WHERE`

The project retrieves students who enrolled after a specific year and
uses conditions to filter records according to a requirement.

### 6. 🔢 `LIMIT`

The course query demonstrates how `LIMIT` can restrict the number of
returned records, such as retrieving up to five courses from a
department.

### 7. 📊 Aggregate Functions

The project uses aggregate functions to summarize data:

-   `COUNT()` 🔢
-   `AVG()` 📈
-   `MAX()` 🏆

These are used for tasks such as counting students, calculating average
course credits, and finding the highest instructor salary.

### 8. 🧩 `GROUP BY` and `HAVING`

`GROUP BY` is used to organize records into groups, while `HAVING`
filters grouped results.

One query counts the number of students enrolled in each course and
filters courses according to the specified enrollment condition.

### 9. 🔗 INNER JOIN

The `INNER JOIN` query retrieves students together with their
corresponding courses.

This demonstrates how related information can be combined from multiple
tables.

### 10. ↔️ LEFT JOIN

The `LEFT JOIN` query retrieves all students and their corresponding
course information.

This is useful for understanding how a LEFT JOIN preserves records from
the left-side table even when a matching record is unavailable.

### 11. 🧠 Subqueries

The project includes nested queries for finding students based on course
enrollment conditions.

The subquery example demonstrates how one query can provide values used
by another query.

### 12. 🗓️ Date Functions

The project extracts the year from enrollment dates, demonstrating how
SQL date values can be transformed and analyzed.

### 13. 🔤 String Functions

Instructor names are combined using `CONCAT()` to demonstrate string
manipulation.

### 14. 📈 Window Functions

A running total of students enrolled in courses is calculated using a
window-function approach.

This introduces an important advanced SQL technique for performing
calculations across related rows without collapsing the result into a
single grouped row.

### 15. 🏷️ Conditional Logic with `CASE`

The final query classifies students as **Senior** or **Junior** based on
their enrollment date.

This demonstrates how `CASE` can be used to create meaningful labels
from database conditions.

------------------------------------------------------------------------

## 📋 Query Practice Included

`main.sql` contains **16 main query tasks**, covering the following:

  Query   Topic
  ------- ---------------------------------------------------
  1️⃣      CRUD operations on all tables <br>
  2️⃣      Students enrolled after 2022 <br>
  3️⃣      Mathematics department courses with `LIMIT` <br>
  4️⃣      Student count per course with filtering <br>
  5️⃣      Students enrolled in both SQL and Data Structures <br>
  6️⃣      Students enrolled in SQL or Data Structures <br>
  7️⃣      Average course credits <br>
  8️⃣      Maximum instructor salary in Computer Science <br>
  9️⃣      Student count by department <br>
  🔟      INNER JOIN for students and courses <br>
  1️⃣1️⃣    LEFT JOIN for all students and courses <br>
  1️⃣2️⃣    Subquery for students in highly enrolled courses <br>
  1️⃣3️⃣    Extract year from enrollment date <br>
  1️⃣4️⃣    Concatenate instructor names <br>
  1️⃣5️⃣    Running total using a window function <br>
  1️⃣6️⃣    `CASE` classification of students

Together, these queries provide practice from **basic SQL retrieval to
more advanced relational and analytical SQL techniques**. 🚀

------------------------------------------------------------------------

## ▶️ How to Run

### 💻 Requirements

You need:

-   🐬 **MySQL Server**
-   🖥️ **MySQL Workbench** or another MySQL-compatible SQL editor
-   📄 The project file: **`main.sql`**

### 🚀 Steps

**1. Open MySQL Workbench**

Launch MySQL Workbench and connect to your MySQL server.

**2. Open `main.sql`**

Open the SQL script included with this project.

**3. Execute the database setup**

Run the script from the beginning so that the database, tables, and
sample records are created in the correct order.

**4. Select the database**

The script already contains:

``` sql
USE college_db;
```

**5. Run the queries**

Execute the queries individually or run the complete script.

💡 **Tip:** Running the queries one by one is recommended when learning
because you can compare each SQL statement with its output and
understand exactly what it does.

------------------------------------------------------------------------

## 📁 Project File

``` text
📦 College Database Management System
└── 📄 main.sql
```

### 📄 `main.sql`

The main SQL file contains:

-   🗄️ Database creation
-   🏗️ Table definitions
-   📝 Sample data
-   🔍 SELECT queries
-   ✏️ CRUD operations
-   📊 Aggregate queries
-   🔗 JOIN operations
-   🧠 Subqueries
-   🗓️ Date functions
-   🔤 String functions
-   📈 Window functions
-   🏷️ Conditional expressions
-   📌 Query outputs and comments for reference

The file is structured so that the database setup comes first, followed
by practice queries and their expected output comments.

------------------------------------------------------------------------

## 🎯 Learning Outcomes

After working through this project, you should have practical experience
with:

-   🗄️ Creating and selecting a MySQL database
-   🏗️ Designing relational tables
-   🔑 Using primary keys and unique constraints
-   🔢 Working with auto-increment IDs
-   📝 Inserting structured records
-   🔍 Filtering data with `WHERE`
-   ✏️ Performing complete CRUD operations
-   📊 Using aggregate functions
-   🧮 Grouping and filtering aggregated results
-   🔗 Combining information with JOINs
-   🧠 Writing and understanding subqueries
-   🗓️ Working with SQL dates
-   🔤 Manipulating strings
-   📈 Using window functions
-   🏷️ Creating conditional results with `CASE`

This makes the project especially useful for **B.Sc IT students, SQL
beginners, database practice, lab work, and portfolio projects**. 🎓💻

------------------------------------------------------------------------

## 👨‍💻 Author

<div align="center">
<h2> Ayush Donga 💻</h2>

**B.Sc IT Student | Aspiring AI/ML Engineer 🤖**

**💻 Skills:** `🐬 MySQL` · `🐍 Python` · `📊 Data Science` · `🤖 AI/ML`

**📄 Project:** `main.sql`

</div>

## ⭐ Project Note

This project is intended for **learning and practice**. You can modify
the sample records, add new departments or courses, create additional
relationships, and write your own queries to explore the database
further.

<div align="center">
<h3>✨🐬 Happy Learning & Happy Querying! 📚✨ </h3>
</div>