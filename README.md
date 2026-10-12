# 🎓 University Course Enrollment Management System — SQL Project

## 📌 Project Overview

This project explores a student course enrollment database using **MySQL**. It demonstrates how SQL can be used to retrieve, connect, filter, and analyze data across students, courses, departments, instructors, and enrollments.

The project includes practical SQL queries designed to strengthen my understanding of database relationships and intermediate-to-advanced SQL concepts.

## 🎯 Objectives

- Understand relational database structures.
- Practice different types of SQL JOINs.
- Retrieve information using subqueries.
- Analyze data using aggregate functions.
- Filter grouped results using `HAVING`.
- Work with date functions and conditional logic.
- Calculate running totals using window functions.
- Solve practical data retrieval and analysis problems.

## 🗂️ Database Schema

The database contains five tables.

### 1. Students

Stores student information.

| Column | Description |
|---|---|
| `StudentId` | Unique student identifier |
| `FirstName` | Student's first name |
| `LastName` | Student's last name |
| `Email` | Student's email address |
| `BirthDate` | Student's date of birth |
| `EnrollmentDate` | Student's enrollment date |

### 2. Courses

Stores information about available courses.

| Column | Description |
|---|---|
| `CourseId` | Unique course identifier |
| `CourseName` | Name of the course |
| `DepartmentId` | Associated department identifier |
| `Credits` | Course credit value |

### 3. Instructor

Stores instructor information, including names, email addresses, and department identifiers.

### 4. Enrollments

Connects students with their selected courses.

| Column | Description |
|---|---|
| `EnrollmentId` | Unique enrollment identifier |
| `StudentId` | Student reference |
| `CourseId` | Course reference |
| `EnrollmentDate` | Date of enrollment |

### 5. Departments

Stores department identifiers and department names.

## 🧠 SQL Concepts Covered

### 🔹 1. Filtering and Sorting

- `WHERE`
- `ORDER BY`
- `LIMIT`
- Date-based filtering

Example: Retrieve students who enrolled from January 2023 onward.

### 🔹 2. Subqueries

Used nested queries to retrieve courses belonging to a particular department and identify students enrolled in courses with multiple students.

Concepts practiced:
- Nested `SELECT` statements
- `IN`
- `GROUP BY` inside subqueries
- `HAVING` inside subqueries

### 🔹 3. SQL JOINs

Practiced combining related information from different tables.

- **INNER JOIN:** Retrieve students and their corresponding courses.
- **LEFT JOIN:** Include all students, even those without course enrollments.
- **Multiple JOINs:** Connect students, enrollments, and courses.
- **Department JOINs:** Analyze enrollment counts across departments.

### 🔹 4. Aggregate Functions

Used aggregate functions to summarize information.

- `COUNT()` — count enrollment records or students.
- `AVG()` — calculate average course credits.
- `GROUP BY` — group records by courses or departments.
- `HAVING` — filter groups based on aggregate conditions.

### 🔹 5. Date Functions

Practiced working with dates using:

- `YEAR()`
- `DATEDIFF()`
- `CURDATE()`

These functions help extract enrollment years, calculate elapsed days, and classify students based on enrollment duration.

### 🔹 6. Window Functions

Used window functions to analyze enrollment records without collapsing individual rows.

Example:

```sql
SELECT
    EnrollmentId,
    StudentId,
    CourseId,
    EnrollmentDate,
    COUNT(*) OVER (
        ORDER BY EnrollmentDate, EnrollmentId
    ) AS RunningTotalStudents
FROM enrollments;
```

This calculates a cumulative count of enrollment records ordered by enrollment date and enrollment ID.

### 🔹 7. CASE Statements

Applied conditional logic to categorize students as **Senior** or **Junior**, based on the time elapsed since their enrollment date.

```sql
SELECT
    StudentId,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN DATEDIFF(CURDATE(), EnrollmentDate) > 1461
            THEN 'Senior'
        ELSE 'Junior'
    END AS StudentStatus
FROM students
ORDER BY EnrollmentDate ASC;
```

## 📊 Practical Queries and Problems

The project includes queries to:

1. Retrieve students enrolled after 2022.
2. Find courses offered by the Mathematics department.
3. Count students enrolled in each course.
4. Identify students enrolled in both Introduction to SQL and Data Structures.
5. Retrieve students enrolled in either of two specified courses.
6. Calculate average credits across all courses.
7. Count enrollment records by department.
8. Retrieve students with their corresponding courses using `INNER JOIN`.
9. Retrieve all students and any associated courses using `LEFT JOIN`.
10. Find students enrolled in courses with at least three enrollment records.
11. Extract enrollment years.
12. Calculate a running total of enrollment records.
13. Categorize students according to enrollment duration.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Environment:** MySQL Workbench or another compatible MySQL client

## 📁 Project Structure

```text
University Course Management-sql/
│
├── main.sql
└── README.md
```

*The SQL filename above is an example; use the actual filename in your repository.*

## 🚀 Future Improvements

- Add foreign key constraints to enforce relationships between tables.
- Explore `CTE` queries using `WITH`.
- Practice `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.
- Explore `LAG()` and `LEAD()` for comparing enrollment records.
- Add correlated subqueries.
- Improve data integrity using appropriate constraints.
- Analyze course popularity and student enrollment trends.
- Optimize queries and explore database indexing.

## 📚 Key Learning Outcomes

Through this project, I practiced:

- Understanding relationships between relational database tables.
- Combining data from multiple tables using JOINs.
- Writing nested SQL queries.
- Aggregating and filtering grouped data.
- Working with dates and conditional expressions.
- Using window functions for cumulative analysis.
- Translating practical questions into SQL queries.

## 👨‍💻 About

This is one of my SQL learning projects, created to develop practical database querying and data analysis skills.

My goal is to strengthen my SQL foundation and progress toward advanced SQL, data analytics, and AI/ML applications.

---

⭐ **Learning by building, querying, and improving — one SQL project at a time.**