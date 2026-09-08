create database college_db;
use college_db;


-- ============================================================================
--                            TABLE CREATION
-- ============================================================================
create table students (
    StuID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50) unique,
    BirthDate date,
    EnrollmentDate date
);

insert into students (FirstName, LastName, Email, BirthDate, EnrollmentDate)
values ('John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
('Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
('Michael', 'Brown', 'michael.brown@email.com', '2001-03-10', '2023-07-15'),
('Emily', 'Davis', 'emily.davis@email.com', '2000-11-20', '2022-09-10'),
('David', 'Wilson', 'david.wilson@email.com', '1998-07-05', '2020-08-20'),
('Sarah', 'Taylor', 'sarah.taylor@email.com', '2001-09-18', '2024-07-01'),
('Daniel', 'Anderson', 'daniel.anderson@email.com', '1999-12-30', '2021-09-05'),
('Sophia', 'Thomas', 'sophia.thomas@email.com', '2002-02-14', '2025-07-10'),
('James', 'Jackson', 'james.jackson@email.com', '2000-06-22', '2023-08-15'),
('Olivia', 'White', 'olivia.white@email.com', '2001-10-12', '2024-08-01');

select * from students;
-- +-------+-----------+----------+---------------------------+------------+----------------+
-- | StuID | FirstName | LastName | Email                     | BirthDate  | EnrollmentDate |
-- +-------+-----------+----------+---------------------------+------------+----------------+
-- |     1 | John      | Doe      | john.doe@email.com        | 2000-01-15 | 2022-08-01     |
-- |     2 | Jane      | Smith    | jane.smith@email.com      | 1999-05-25 | 2021-08-01     |
-- |     3 | Michael   | Brown    | michael.brown@email.com   | 2001-03-10 | 2023-07-15     |
-- |     4 | Emily     | Davis    | emily.davis@email.com     | 2000-11-20 | 2022-09-10     |
-- |     5 | David     | Wilson   | david.wilson@email.com    | 1998-07-05 | 2020-08-20     |
-- |     6 | Sarah     | Taylor   | sarah.taylor@email.com    | 2001-09-18 | 2024-07-01     |
-- |     7 | Daniel    | Anderson | daniel.anderson@email.com | 1999-12-30 | 2021-09-05     |
-- |     8 | Sophia    | Thomas   | sophia.thomas@email.com   | 2002-02-14 | 2025-07-10     |
-- |     9 | James     | Jackson  | james.jackson@email.com   | 2000-06-22 | 2023-08-15     |
-- |    10 | Olivia    | White    | olivia.white@email.com    | 2001-10-12 | 2024-08-01     |
-- +-------+-----------+----------+---------------------------+------------+----------------+





create table courses (
    CourseID int auto_increment primary key,
    CourseName varchar(50) not null,
    DeptID int,
    Credits int
);

insert into courses (CourseName, DeptID, Credits)
values ('Introduction to SQL', 1, 3),
('Data Structures', 2, 4),
('Database Management', 1, 4),
('Python Programming', 3, 3),
('Machine Learning', 4, 4),
('Artificial Intelligence', 5, 4),
('Statistics', 2, 3),
('Data Science', 3, 3),
('Data Analytics', 4, 4),
('Cyber Security', 10, 3);

select * from courses;
-- +----------+-------------------------+--------+---------+
-- | CourseID | CourseName              | DeptID | Credits |
-- +----------+-------------------------+--------+---------+
-- |        1 | Introduction to SQL     |      1 |       3 |
-- |        2 | Data Structures         |      2 |       4 |
-- |        3 | Database Management     |      1 |       4 |
-- |        4 | Python Programming      |      3 |       3 |
-- |        5 | Machine Learning        |      4 |       4 |
-- |        6 | Artificial Intelligence |      5 |       4 |
-- |        7 | Statistics              |      2 |       3 |
-- |        8 | Data Science            |      3 |       3 |
-- |        9 | Data Analytics          |      4 |       4 |
-- |       10 | Cyber Security          |     10 |       3 |
-- +----------+-------------------------+--------+---------+





create table instructors (
    InstructorID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50) unique,
    DeptID int,
    Salary decimal(10,2)
);

insert into instructors (FirstName, LastName, Email, DeptID, Salary) 
values ('Alice', 'Johnson', 'alice.johnson@univ.com', 1, 75000.00),
('Bob', 'Lee', 'bob.lee@univ.com', 2, 68000.00),
('Robert', 'Martin', 'robert.martin@univ.com', 1, 82000.00),
('Linda', 'Clark', 'linda.clark@univ.com', 3, 71000.00),
('William', 'Lewis', 'william.lewis@univ.com', 4, 88000.00),
('Emma', 'Walker', 'emma.walker@univ.com', 5, 92000.00),
('Thomas', 'Hall', 'thomas.hall@univ.com', 2, 70000.00),
('Sophia', 'Allen', 'sophia.allen@univ.com', 6, 65000.00),
('Henry', 'Young', 'henry.young@univ.com', 10, 79000.00),
('Grace', 'King', 'grace.king@univ.com', 3, 73000.00);

select * from instructors;
-- +--------------+-----------+----------+------------------------+--------+----------+
-- | InstructorID | FirstName | LastName | Email                  | DeptID | Salary   |
-- +--------------+-----------+----------+------------------------+--------+----------+
-- |            1 | Alice     | Johnson  | alice.johnson@univ.com |      1 | 75000.00 |
-- |            2 | Bob       | Lee      | bob.lee@univ.com       |      2 | 68000.00 |
-- |            3 | Robert    | Martin   | robert.martin@univ.com |      1 | 82000.00 |
-- |            4 | Linda     | Clark    | linda.clark@univ.com   |      3 | 71000.00 |
-- |            5 | William   | Lewis    | william.lewis@univ.com |      4 | 88000.00 |
-- |            6 | Emma      | Walker   | emma.walker@univ.com   |      5 | 92000.00 |
-- |            7 | Thomas    | Hall     | thomas.hall@univ.com   |      2 | 70000.00 |
-- |            8 | Sophia    | Allen    | sophia.allen@univ.com  |      6 | 65000.00 |
-- |            9 | Henry     | Young    | henry.young@univ.com   |     10 | 79000.00 |
-- |           10 | Grace     | King     | grace.king@univ.com    |      3 | 73000.00 |
-- +--------------+-----------+----------+------------------------+--------+----------+





create table enrollments (
    EnrollmentID int auto_increment primary key,
    StuID int,
    CourseID int,
    EnrollmentDate date
);

insert into enrollments (StuID, CourseID, EnrollmentDate) 
values (1, 1, '2022-08-01'),
(2, 2, '2021-08-01'),
(3, 1, '2023-07-15'),
(4, 3, '2022-09-10'),
(5, 2, '2020-08-20'),
(6, 5, '2024-07-01'),
(7, 1, '2021-09-05'),
(8, 6, '2025-07-10'),
(9, 4, '2023-08-15'),
(10, 5, '2024-08-01');

select * from enrollments;
-- +--------------+-------+----------+----------------+
-- | EnrollmentID | StuID | CourseID | EnrollmentDate |
-- +--------------+-------+----------+----------------+
-- |            1 |     1 |        1 | 2022-08-01     |
-- |            2 |     2 |        2 | 2021-08-01     |
-- |            3 |     3 |        1 | 2023-07-15     |
-- |            4 |     4 |        3 | 2022-09-10     |
-- |            5 |     5 |        2 | 2020-08-20     |
-- |            6 |     6 |        5 | 2024-07-01     |
-- |            7 |     7 |        1 | 2021-09-05     |
-- |            8 |     8 |        6 | 2025-07-10     |
-- |            9 |     9 |        4 | 2023-08-15     |
-- |           10 |    10 |        5 | 2024-08-01     |
-- +--------------+-------+----------+----------------+





create table departments (
    DeptID int auto_increment primary key,
    DeptName varchar(50)
);

insert into departments (DeptName) 
values ('Computer Science'),
('Mathematics'),
('Information Technology'),
('Data Science'),
('Artificial Intelligence'),
('Physics'),
('Chemistry'),
('Commerce'),
('Business Administration'),
('Cyber Security');

select * from departments;
-- +--------+-------------------------+
-- | DeptID | DeptName                |
-- +--------+-------------------------+
-- |      1 | Computer Science        |
-- |      2 | Mathematics             |
-- |      3 | Information Technology  |
-- |      4 | Data Science            |
-- |      5 | Artificial Intelligence |
-- |      6 | Physics                 |
-- |      7 | Chemistry               |
-- |      8 | Commerce                |
-- |      9 | Business Administration |
-- |     10 | Cyber Security          |
-- +--------+-------------------------+







-- =========================================================
-- QUERY 1 : PERFORM CRUD OPERATIONS ON ALL TABLES
-- =========================================================

insert into students (FirstName, LastName, Email, BirthDate, EnrollmentDate)
values ('Test', 'Student', 'test.student@email.com', '2002-05-10', '2025-08-01');
-- Query OK, 1 row affected 

select * from students where StuID = 11;
-- +-------+-----------+----------+------------------------+------------+----------------+
-- | StuID | FirstName | LastName | Email                  | BirthDate  | EnrollmentDate |
-- +-------+-----------+----------+------------------------+------------+----------------+
-- |    11 | Test      | Student  | test.student@email.com | 2002-05-10 | 2025-08-01     |
-- +-------+-----------+----------+------------------------+------------+----------------+

update students set Email = 'test.student@test.com' where StuID = 11;
-- Query OK, 1 row affected (0.132 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from students where StuID = 11;
-- Query OK, 1 row affected 

--------------------------------------------------------------------------------------------------------------

insert into courses (CourseName, DeptID, Credits)
values ('Advanced SQL', 1, 4);
-- Query OK, 1 row affected

select * from courses where CourseID = 11;
-- +----------+--------------+--------+---------+
-- | CourseID | CourseName   | DeptID | Credits |
-- +----------+--------------+--------+---------+
-- |       11 | Advanced SQL |      1 |       4 |
-- +----------+--------------+--------+---------+

update courses set Credits = 5 where CourseID = 11;
-- Query OK, 1 row affected (0.074 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from courses where CourseID = 11;
-- Query OK, 1 row affected 

---------------------------------------------------------------------------------------------------------------

insert into instructors (FirstName, LastName, Email, DeptID, Salary)
values ('Test', 'Instructor', 'test.instructor@univ.com', 1, 50000.00);
-- Query OK, 1 row affected (0.320 sec)

select * from instructors where InstructorID = 11;
-- +--------------+-----------+------------+--------------------------+--------+----------+
-- | InstructorID | FirstName | LastName   | Email                    | DeptID | Salary   |
-- +--------------+-----------+------------+--------------------------+--------+----------+
-- |           11 | Test      | Instructor | test.instructor@univ.com |      1 | 50000.00 |
-- +--------------+-----------+------------+--------------------------+--------+----------+

update instructors set DeptID = 3 where InstructorID = 11;
-- Query OK, 1 row affected (0.081 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from instructors where InstructorID = 11;
-- Query OK, 1 row affected

-----------------------------------------------------------------------------------------------------------------

insert into enrollments (StuID, CourseID, EnrollmentDate)
values (1, 4, '2025-08-01');
-- Query OK, 1 row affected (0.301 sec)

select * from enrollments where EnrollmentID = 11;
-- +--------------+-------+----------+----------------+
-- | EnrollmentID | StuID | CourseID | EnrollmentDate |
-- +--------------+-------+----------+----------------+
-- |           11 |     1 |        4 | 2025-08-01     |
-- +--------------+-------+----------+----------------+

update enrollments set CourseID = 6 where EnrollmentID = 11;
-- Query OK, 1 row affected (0.054 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from enrollments where EnrollmentID = 11;
-- Query OK, 1 row affected 

---------------------------------------------------------------------------------------------------------------------

insert into departments (DeptName)
values ('Software Engineering');
-- Query OK, 1 row affected

select * from departments where DeptID = 11;
-- +--------+----------------------+
-- | DeptID | DeptName             |
-- +--------+----------------------+
-- |     11 | Software Engineering |
-- +--------+----------------------+

update departments set DeptName = 'Software Development' where DeptID = 11;
-- Query OK, 1 row affected (0.311 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from departments where DeptID = 11;
-- Query OK, 1 row affected (0.306 sec)








-- =========================================================
-- QUERY 2 : RETRIEVE STUDENTS WHO ENROLLED AFTER 2022
-- =========================================================
select * from students where EnrollmentDate > "2022-12-31";

-- +-------+-----------+----------+-------------------------+------------+----------------+
-- | StuID | FirstName | LastName | Email                   | BirthDate  | EnrollmentDate |
-- +-------+-----------+----------+-------------------------+------------+----------------+
-- |     3 | Michael   | Brown    | michael.brown@email.com | 2001-03-10 | 2023-07-15     |
-- |     6 | Sarah     | Taylor   | sarah.taylor@email.com  | 2001-09-18 | 2024-07-01     |
-- |     8 | Sophia    | Thomas   | sophia.thomas@email.com | 2002-02-14 | 2025-07-10     |
-- |     9 | James     | Jackson  | james.jackson@email.com | 2000-06-22 | 2023-08-15     |
-- |    10 | Olivia    | White    | olivia.white@email.com  | 2001-10-12 | 2024-08-01     |
-- +-------+-----------+----------+-------------------------+------------+----------------+





-- =========================================================
-- QUERY 3 : RETRIEVE COURSES OFFERED BY MATHEMATICS DEPARTMENT WITH A LIMIT OF 5 COURSES
-- =========================================================
select c.CourseID, c.CourseName, c.DeptID, d.DeptName from courses c
inner join departments d 
on c.DeptID = d.DeptID where d.DeptName = "MATHEMATICS" limit 5;

-- +----------+-----------------+--------+-------------+
-- | CourseID | CourseName      | DeptID | DeptName    |
-- +----------+-----------------+--------+-------------+
-- |        2 | Data Structures |      2 | Mathematics |
-- |        7 | Statistics      |      2 | Mathematics |
-- +----------+-----------------+--------+-------------+





-- =========================================================
-- QUERY 4 : NUMBER OF STUDENTS ENROLLED IN EACH COURSE FILTER COURSES WITH MORE THAN 5 STUDENTS
-- =========================================================
select CourseID, COUNT(StuID) as TotalStudents from Enrollments
group by CourseID having COUNT(StuID) > 5;

-- Empty set (0.060 sec)





-- =========================================================
-- QUERY 5 : FIND STUDENTS ENROLLED IN BOTH INTRODUCTION TO SQL AND DATA STRUCTURES
-- =========================================================
select s.FirstName, s.LastName from Students s
join Enrollments e using (StuID)
join Courses c using (CourseID)
where c.CourseName in ('Introduction to SQL', 'Data Structures')
group by s.StuID having count(c.CourseName) = 2;

-- Empty set (0.527 sec)





-- =========================================================
-- QUERY 6 : FIND STUDENTS WHO ARE EITHER ENROLLED IN INTRODUCTION TO SQL OR DATA STRUCTURES
-- =========================================================
select s.StuID, s.FirstName, s.LastName, c.CourseName from students s
inner join enrollments e on s.StuID = e.StuID
inner join Courses c on e.CourseID = c.CourseID
where c.CourseName in('Introduction to SQL','Data Structures');

-- +-------+-----------+----------+---------------------+
-- | StuID | FirstName | LastName | CourseName          |
-- +-------+-----------+----------+---------------------+
-- |     1 | John      | Doe      | Introduction to SQL |
-- |     2 | Jane      | Smith    | Data Structures     |
-- |     3 | Michael   | Brown    | Introduction to SQL |
-- |     5 | David     | Wilson   | Data Structures     |
-- |     7 | Daniel    | Anderson | Introduction to SQL |
-- +-------+-----------+----------+---------------------+





-- =========================================================
-- QUERY 7 : CALCULATE AVERAGE NUMBER OF CREDITS FOR ALL COURSES
-- =========================================================
select avg(Credits) as Avg_credits from courses;

-- +-------------+
-- | Avg_credits |
-- +-------------+
-- |      3.5000 |
-- +-------------+





-- =========================================================
-- QUERY 8 : FIND MAXIMUM SALARY OF INSTRUCTORS IN COMPUTER SCIENCE DEPARTMENT
-- =========================================================
select max(i.Salary) as Max_Salary, d.DeptName from instructors i
join departments d on i.DeptID = d.DeptID
where d.DeptName = "Computer Science";

-- +------------+------------------+
-- | Max_Salary | DeptName         |
-- +------------+------------------+
-- |   82000.00 | Computer Science |
-- +------------+------------------+





-- =========================================================
-- QUERY 9 : COUNT NUMBER OF STUDENTS ENROLLED IN EACH DEPARTMENT
-- =========================================================
select d.DeptID, d.DeptName, count(e.StuID) as "Total Students" from departments d
left join courses c on d.DeptID = c.DeptID
left join enrollments e on c.CourseID = e.CourseID
group by d.DeptID;

-- +--------+-------------------------+----------------+
-- | DeptID | DeptName                | Total Students |
-- +--------+-------------------------+----------------+
-- |      1 | Computer Science        |              4 |
-- |      2 | Mathematics             |              2 |
-- |      3 | Information Technology  |              1 |
-- |      4 | Data Science            |              2 |
-- |      5 | Artificial Intelligence |              1 |
-- |      6 | Physics                 |              0 |
-- |      7 | Chemistry               |              0 |
-- |      8 | Commerce                |              0 |
-- |      9 | Business Administration |              0 |
-- |     10 | Cyber Security          |              0 |
-- +--------+-------------------------+----------------+





-- =========================================================
-- QUERY 10 : INNER JOIN RETRIEVE STUDENTS AND THEIR CORRESPONDING COURSES
-- =========================================================
select s.StuID, s.FirstName, s.LastName, c.CourseID, c.CourseName from students s
inner join enrollments e on s.StuID = e.StuID
inner join courses c on c.CourseID = e.CourseID;

-- +-------+-----------+----------+----------+-------------------------+
-- | StuID | FirstName | LastName | CourseID | CourseName              |
-- +-------+-----------+----------+----------+-------------------------+
-- |     1 | John      | Doe      |        1 | Introduction to SQL     |
-- |     2 | Jane      | Smith    |        2 | Data Structures         |
-- |     3 | Michael   | Brown    |        1 | Introduction to SQL     |
-- |     4 | Emily     | Davis    |        3 | Database Management     |
-- |     5 | David     | Wilson   |        2 | Data Structures         |
-- |     6 | Sarah     | Taylor   |        5 | Machine Learning        |
-- |     7 | Daniel    | Anderson |        1 | Introduction to SQL     |
-- |     8 | Sophia    | Thomas   |        6 | Artificial Intelligence |
-- |     9 | James     | Jackson  |        4 | Python Programming      |
-- |    10 | Olivia    | White    |        5 | Machine Learning        |
-- +-------+-----------+----------+----------+-------------------------+





-- =========================================================
-- QUERY 11 : LEFT JOIN RETRIEVE ALL STUDENTS AND THEIR CORRESPONDING COURSES
-- =========================================================
select s.StuID, s.FirstName, s.LastName, c.CourseName from students s
left join enrollments e on s.StuID = e.StuID
left join courses c on c.CourseID = e.CourseID;

-- +-------+-----------+----------+-------------------------+
-- | StuID | FirstName | LastName | CourseName              |
-- +-------+-----------+----------+-------------------------+
-- |     1 | John      | Doe      | Introduction to SQL     |
-- |     2 | Jane      | Smith    | Data Structures         |
-- |     3 | Michael   | Brown    | Introduction to SQL     |
-- |     4 | Emily     | Davis    | Database Management     |
-- |     5 | David     | Wilson   | Data Structures         |
-- |     6 | Sarah     | Taylor   | Machine Learning        |
-- |     7 | Daniel    | Anderson | Introduction to SQL     |
-- |     8 | Sophia    | Thomas   | Artificial Intelligence |
-- |     9 | James     | Jackson  | Python Programming      |
-- |    10 | Olivia    | White    | Machine Learning        |
-- +-------+-----------+----------+-------------------------+





-- =========================================================
-- QUERY 12 : SUBQUERY FIND STUDENTS ENROLLED IN COURSES THAT HAVE MORE THAN 10 STUDENTS
-- =========================================================
select * from students where StuID in (select StuID from enrollments where CourseID in 
(select CourseID from enrollments group by CourseID having count(*) > 10));

-- Empty set (0.019 sec)





-- =========================================================
-- QUERY 13 : EXTRACT THE YEAR FROM ENROLLMENT DATE
-- =========================================================
select *, year(EnrollmentDate) as "Year" from enrollments;

-- +--------------+-------+----------+----------------+------+
-- | EnrollmentID | StuID | CourseID | EnrollmentDate | Year |
-- +--------------+-------+----------+----------------+------+
-- |            1 |     1 |        1 | 2022-08-01     | 2022 |
-- |            2 |     2 |        2 | 2021-08-01     | 2021 |
-- |            3 |     3 |        1 | 2023-07-15     | 2023 |
-- |            4 |     4 |        3 | 2022-09-10     | 2022 |
-- |            5 |     5 |        2 | 2020-08-20     | 2020 |
-- |            6 |     6 |        5 | 2024-07-01     | 2024 |
-- |            7 |     7 |        1 | 2021-09-05     | 2021 |
-- |            8 |     8 |        6 | 2025-07-10     | 2025 |
-- |            9 |     9 |        4 | 2023-08-15     | 2023 |
-- |           10 |    10 |        5 | 2024-08-01     | 2024 |
-- +--------------+-------+----------+----------------+------+





-- =========================================================
-- QUERY 14 : CONCATENATE INSTRUCTOR'S FIRST AND LAST NAME
-- =========================================================
select InstructorID, concat(FirstName, " ", LastName) as "Full Name" from instructors;

-- +--------------+---------------+
-- | InstructorID | Full Name     |
-- +--------------+---------------+
-- |            1 | Alice Johnson |
-- |            2 | Bob Lee       |
-- |            3 | Robert Martin |
-- |            4 | Linda Clark   |
-- |            5 | William Lewis |
-- |            6 | Emma Walker   |
-- |            7 | Thomas Hall   |
-- |            8 | Sophia Allen  |
-- |            9 | Henry Young   |
-- |           10 | Grace King    |
-- +--------------+---------------+





-- =========================================================
-- QUERY 15 : CALCULATE RUNNING TOTAL OF STUDENTS ENROLLED IN COURSES
-- =========================================================
select *, count(*) over (rows between unbounded preceding and current row) as "Running_TotalStudents"
from enrollments;

-- +--------------+-------+----------+----------------+-----------------------+
-- | EnrollmentID | StuID | CourseID | EnrollmentDate | Running_TotalStudents |
-- +--------------+-------+----------+----------------+-----------------------+
-- |            1 |     1 |        1 | 2022-08-01     |                     1 |
-- |            2 |     2 |        2 | 2021-08-01     |                     2 |
-- |            3 |     3 |        1 | 2023-07-15     |                     3 |
-- |            4 |     4 |        3 | 2022-09-10     |                     4 |
-- |            5 |     5 |        2 | 2020-08-20     |                     5 |
-- |            6 |     6 |        5 | 2024-07-01     |                     6 |
-- |            7 |     7 |        1 | 2021-09-05     |                     7 |
-- |            8 |     8 |        6 | 2025-07-10     |                     8 |
-- |            9 |     9 |        4 | 2023-08-15     |                     9 |
-- |           10 |    10 |        5 | 2024-08-01     |                    10 |
-- +--------------+-------+----------+----------------+-----------------------+





-- =========================================================
-- QUERY 16 : LABEL STUDENTS AS SENIOR OR JUNIOR BASED ON ENROLLMENT DATE MORE THAN 4 YEARS = SENIOR OTHERWISE = JUNIOR
-- =========================================================
select StuID, FirstName, LastName, EnrollmentDate,
case
    when EnrollmentDate < date_sub(curdate(), interval 4 year) then "Senior"
    else "Junior"
end as Label
from students;

-- +-------+-----------+----------+----------------+--------+
-- | StuID | FirstName | LastName | EnrollmentDate | Label  |
-- +-------+-----------+----------+----------------+--------+
-- |     1 | John      | Doe      | 2022-08-01     | Senior |
-- |     2 | Jane      | Smith    | 2021-08-01     | Senior |
-- |     3 | Michael   | Brown    | 2023-07-15     | Junior |
-- |     4 | Emily     | Davis    | 2022-09-10     | Junior |
-- |     5 | David     | Wilson   | 2020-08-20     | Senior |
-- |     6 | Sarah     | Taylor   | 2024-07-01     | Junior |
-- |     7 | Daniel    | Anderson | 2021-09-05     | Senior |
-- |     8 | Sophia    | Thomas   | 2025-07-10     | Junior |
-- |     9 | James     | Jackson  | 2023-08-15     | Junior |
-- |    10 | Olivia    | White    | 2024-08-01     | Junior |
-- +-------+-----------+----------+----------------+--------+