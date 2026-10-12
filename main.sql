--Student Table:
create table students
(
    StudentId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName varchar(20) NOT NULL,
    LastName varchar(20) NOT NULL,
    Email varchar(50),
    BirthDate DATE,
    EnrollmentDate DATE NOT NULL
);
INSERT INTO students (FirstName, LastName, Email, BirthDate, EnrollmentDate) values
("John", "Doe", "john.doe@gmail.com", "2000-01-15", "2022-08-01"),
("Jane", "Smith", "jane.smith@gmail.com", "1999-05-25", "2021-08-01"),
("Robert", "Johnson", "robert.j@gmail.com", "2001-03-10", "2023-08-01"),
("Emily", "Davis", "emily.davis@yahoo.com", "2002-11-22", "2024-01-15"),
("Michael", "Brown", "mbrown@outlook.com", "2000-07-19", "2022-08-01"),
("Sophia", "Wilson", "sophia.w@gmail.com", "2003-05-14", "2024-08-01"),
("David", "Miller", "david.m@edu.com", "1998-12-05", "2021-01-10"),
("Olivia", "Garcia", "olivia.g@gmail.com", "2002-02-28", "2023-08-01"),
("James", "Rodriguez", "jrodriguez@yahoo.com", "2001-09-12", "2023-01-15"),
("Ava", "Martinez", "ava.m@outlook.com", "2004-04-08", "2025-08-01");

select * from students;
+-----------+-----------+-----------+-----------------------+------------+----------------+
| StudentId | FirstName | LastName  | Email                 | BirthDate  | EnrollmentDate |
+-----------+-----------+-----------+-----------------------+------------+----------------+
|         1 | John      | Doe       | john.doe@gmail.com    | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith     | jane.smith@gmail.com  | 1999-05-25 | 2021-08-01     |
|         3 | Robert    | Johnson   | robert.j@gmail.com    | 2001-03-10 | 2023-08-01     |
|         4 | Emily     | Davis     | emily.davis@yahoo.com | 2002-11-22 | 2024-01-15     |
|         5 | Michael   | Brown     | mbrown@outlook.com    | 2000-07-19 | 2022-08-01     |
|         6 | Sophia    | Wilson    | sophia.w@gmail.com    | 2003-05-14 | 2024-08-01     |
|         7 | David     | Miller    | david.m@edu.com       | 1998-12-05 | 2021-01-10     |
|         8 | Olivia    | Garcia    | olivia.g@gmail.com    | 2002-02-28 | 2023-08-01     |
|         9 | James     | Rodriguez | jrodriguez@yahoo.com  | 2001-09-12 | 2023-01-15     |
|        10 | Ava       | Martinez  | ava.m@outlook.com     | 2004-04-08 | 2025-08-01     |
+-----------+-----------+-----------+-----------------------+------------+----------------+


--Courses Table:
CREATE TABLE courses
(
    CourseId INT NOT NULL PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    DepartmentId INT NOT NULL,
    Credits INT NOT NULL
);

INSERT INTO courses (CourseId, CourseName, DepartmentId, Credits) VALUES
(101, "Introduction to SQL", 1, 3),
(102, "Data structures", 2, 4),
(103, "Advanced Database Systems", 1, 4),
(104, "Web Development Foundations", 1, 3),
(105, "Design and Analysis of Algorithms", 2, 4),
(106, "Principles of Microeconomics", 3, 3),
(107, "Corporate Finance Analytics", 3, 4),
(108, "Linear Algebra", 4, 3),
(109, "Probability and Statistics", 4, 4),
(110, "Technical Writing & Comm.", 5, 2);

SELECT * FROM courses;
+----------+-----------------------------------+--------------+---------+
| CourseId | CourseName                        | DepartmentId | Credits |
+----------+-----------------------------------+--------------+---------+
|      101 | Introduction to SQL               |            1 |       3 |
|      102 | Data structures                   |            2 |       4 |
|      103 | Advanced Database Systems         |            1 |       4 |
|      104 | Web Development Foundations       |            1 |       3 |
|      105 | Design and Analysis of Algorithms |            2 |       4 |
|      106 | Principles of Microeconomics      |            3 |       3 |
|      107 | Corporate Finance Analytics       |            3 |       4 |
|      108 | Linear Algebra                    |            4 |       3 |
|      109 | Probability and Statistics        |            4 |       4 |
|      110 | Technical Writing & Comm.         |            5 |       2 |
+----------+-----------------------------------+--------------+---------+


--Instuctors Table:
CREATE TABLE instructor
(
    InstructorId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(25) NOT NULL,
    LastName VARCHAR(25) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    DepartmentId INT
);
INSERT INTO instructor (FirstName, LastName, Email, DepartmentId) VALUES
("Alice", "Johnson", "alice.johnson@univ.com", 1),
("Bob", "Lee", "bob.lee@univ.com", 2),
("Charlie", "Brown", "charlie.brown@univ.com", 1),
("Diana", "Prince", "diana.prince@univ.com", 2),
("Edward", "Norton", "edward.norton@univ.com", 3),
("Fiona", "Gallagher", "fiona.g@univ.com", 3),
("George", "Green", "george.green@univ.com", 4),
("Hannah", "Abbott", "hannah.a@univ.com", 4),
("Ian", "Malcolm", "ian.malcolm@univ.com", 5),
("Julia", "Roberts", "julia.r@univ.com", 5);

SELECT * FROM instructor;
+--------------+-----------+-----------+------------------------+--------------+
| InstructorId | FirstName | LastName  | Email                  | DepartmentId |
+--------------+-----------+-----------+------------------------+--------------+
|            1 | Alice     | Johnson   | alice.johnson@univ.com |            1 |
|            2 | Bob       | Lee       | bob.lee@univ.com       |            2 |
|            3 | Charlie   | Brown     | charlie.brown@univ.com |            1 |
|            4 | Diana     | Prince    | diana.prince@univ.com  |            2 |
|            5 | Edward    | Norton    | edward.norton@univ.com |            3 |
|            6 | Fiona     | Gallagher | fiona.g@univ.com       |            3 |
|            7 | George    | Green     | george.green@univ.com  |            4 |
|            8 | Hannah    | Abbott    | hannah.a@univ.com      |            4 |
|            9 | Ian       | Malcolm   | ian.malcolm@univ.com   |            5 |
|           10 | Julia     | Roberts   | julia.r@univ.com       |            5 |
+--------------+-----------+-----------+------------------------+--------------+


--Entrollments Table:
CREATE TABLE enrollments
(
    EnrollmentId INT AUTO_INCREMENT PRIMARY KEY,
    StudentId INT NOT NULL,
    CourseId INT NOT NULL,
    EnrollmentDate DATE NOT NULL
);
INSERT INTO enrollments (StudentId, CourseId, EnrollmentDate) VALUES
(1, 101, "2022-08-01"),
(2, 102, "2021-08-01"),
(1, 103, "2023-01-15"),
(1, 108, "2023-08-01"),

-- Student 2 (Jane Smith) taking more courses
(2, 104, "2022-01-15"),
(2, 109, "2022-08-01"),

-- Student 3 (Robert Johnson)
(3, 101, "2023-08-01"),
(3, 105, "2023-08-01"),
(3, 110, "2024-01-15"),

-- Student 4 (Emily Davis)
(4, 102, "2024-01-15"),
(4, 106, "2024-08-01"),

-- Student 5 (Michael Brown)
(5, 101, "2022-08-01"),
(5, 107, "2023-01-15"),

-- Student 6 (Sophia Wilson)
(6, 104, "2024-08-01"),
(6, 108, "2025-01-15"),

-- Student 7 (David Miller)
(7, 103, "2021-01-10"),
(7, 109, "2021-08-01"),

-- Student 8 (Olivia Garcia)
(8, 105, "2023-08-01"),

-- Student 9 (James Rodriguez)
(9, 106, "2023-01-15"),
(9, 110, "2023-08-01");

SELECT * FROM enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2022-08-01     |
|            2 |         2 |      102 | 2021-08-01     |
|            3 |         1 |      103 | 2023-01-15     |
|            4 |         1 |      108 | 2023-08-01     |
|            5 |         2 |      104 | 2022-01-15     |
|            6 |         2 |      109 | 2022-08-01     |
|            7 |         3 |      101 | 2023-08-01     |
|            8 |         3 |      105 | 2023-08-01     |
|            9 |         3 |      110 | 2024-01-15     |
|           10 |         4 |      102 | 2024-01-15     |
|           11 |         4 |      106 | 2024-08-01     |
|           12 |         5 |      101 | 2022-08-01     |
|           13 |         5 |      107 | 2023-01-15     |
|           14 |         6 |      104 | 2024-08-01     |
|           15 |         6 |      108 | 2025-01-15     |
|           16 |         7 |      103 | 2021-01-10     |
|           17 |         7 |      109 | 2021-08-01     |
|           18 |         8 |      105 | 2023-08-01     |
|           19 |         9 |      106 | 2023-01-15     |
|           20 |         9 |      110 | 2023-08-01     |
+--------------+-----------+----------+----------------+


--Departments Table:
CREATE TABLE departments
(
    DepartmentId INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);  
INSERT INTO departments (DepartmentName) VALUES
("Computer Science"),
("Mathematics"),
("Business & Finance"),
("Data Analytics & Stats"),
("Humanities & Languages");

SELECT * FROM departments;
+--------------+------------------------+
| DepartmentId | DepartmentName         |
+--------------+------------------------+
|            1 | Computer Science       |
|            2 | Mathematics            |
|            3 | Business & Finance     |
|            4 | Data Analytics & Stats |
|            5 | Humanities & Languages |
+--------------+------------------------+

--QUERIES:

--1. Retrieve students who enrolled after 2022.
SELECT 
    StudentId,
    FirstName,
    LastName,
    EnrollmentDate
FROM STUDENTS
WHERE EnrollmentDate >= "2023-01-01"
ORDER BY EnrollmentDate ASC;
+-----------+-----------+-----------+----------------+
| StudentId | FirstName | LastName  | EnrollmentDate |
+-----------+-----------+-----------+----------------+
|         9 | James     | Rodriguez | 2023-01-15     |
|         3 | Robert    | Johnson   | 2023-08-01     |
|         8 | Olivia    | Garcia    | 2023-08-01     |
|         4 | Emily     | Davis     | 2024-01-15     |
|         6 | Sophia    | Wilson    | 2024-08-01     |
|        10 | Ava       | Martinez  | 2025-08-01     |
+-----------+-----------+-----------+----------------+

--2. Retrieve courses offered by Mathematics department with a limit of 5.
SELECT 
    CourseId,
    CourseName,
    Credits
FROM courses
WHERE DepartmentId = (SELECT DepartmentId FROM departments WHERE DepartmentName like "%Mathematics%")
LIMIT 5;
+----------+-----------------------------------+---------+
| CourseId | CourseName                        | Credits |
+----------+-----------------------------------+---------+
|      102 | Data structures                   |       4 |
|      105 | Design and Analysis of Algorithms |       4 |
+----------+-----------------------------------+---------+

--3. Get the number of students in each course, filtering for courses more than 5 students.
SELECT 
    c.CourseId,
    c.CourseName,
    COUNT(e.StudentId) as EnrolledStudents
FROM courses c
INNER JOIN enrollments e ON c.CourseId = e.CourseId
GROUP BY c.CourseId, c.CourseName
HAVING COUNT(e.StudentId) >=2;
+----------+-----------------------------------+------------------+
| CourseId | CourseName                        | EnrolledStudents |
+----------+-----------------------------------+------------------+
|      101 | Introduction to SQL               |                3 |
|      102 | Data structures                   |                2 |
|      103 | Advanced Database Systems         |                2 |
|      108 | Linear Algebra                    |                2 |
|      104 | Web Development Foundations       |                2 |
|      109 | Probability and Statistics        |                2 |
|      105 | Design and Analysis of Algorithms |                2 |
|      110 | Technical Writing & Comm.         |                2 |
|      106 | Principles of Microeconomics      |                2 |
+----------+-----------------------------------+------------------+

--4. Find the students who enrolled in both Introduction to SQL and  Data Structures.
SELECT 
    c.CourseName,
    s.FirstName,
    s.LastName
FROM enrollments e
INNER JOIN courses c ON e.CourseId = c.CourseId
INNER JOIN students s ON e.StudentId = s.StudentId
WHERE c.CourseName IN ("Introduction to SQL", "Data structures")
GROUP BY c.CourseName, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseId) = 2;

    --This query has EMPTY SET.

--5. Find the students who are either enrolled in both Introduction to SQL or Data Structures.
SELECT 
    c.CourseName,
    s.FirstName,
    s.LastName
FROM enrollments e
INNER JOIN courses c ON e.CourseId = c.CourseId
INNER JOIN students s ON e.StudentId = s.StudentId
WHERE c.CourseName IN ("Introduction to SQL", "Data structures")
GROUP BY c.CourseName, s.FirstName, s.LastName;
+---------------------+-----------+----------+
| CourseName          | FirstName | LastName |
+---------------------+-----------+----------+
| Introduction to SQL | John      | Doe      |
| Data structures     | Jane      | Smith    |
| Introduction to SQL | Robert    | Johnson  |
| Data structures     | Emily     | Davis    |
| Introduction to SQL | Michael   | Brown    |
+---------------------+-----------+----------+

--6. Calculate the average number of credits for all courses.
SELECT AVG(Credits) AS AverageCredits FROM courses;
+----------------+
| AverageCredits |
+----------------+
|         3.4000 |
+----------------+

--7. Count the number of student enrolled in each department.
SELECT 
    d.DepartmentId,
    d.DepartmentName, 
    COUNT(e.StudentId) AS NumberOfStudents
FROM departments d
LEFT JOIN courses c ON d.DepartmentId = c.DepartmentId
LEFT JOIN enrollments e ON c.CourseId = e.CourseId
GROUP BY d.DepartmentId, d.DepartmentName
ORDER BY NumberOfStudents DESC;
+--------------+------------------------+------------------+
| DepartmentId | DepartmentName         | NumberOfStudents |
+--------------+------------------------+------------------+
|            1 | Computer Science       |                7 |
|            2 | Mathematics            |                4 |
|            4 | Data Analytics & Stats |                4 |
|            3 | Business & Finance     |                3 |
|            5 | Humanities & Languages |                2 |
+--------------+------------------------+------------------+

--8. INNER JOIN: Retrieve students and their corresponding courses.
SELECT s.StudentId, CONCAT(s.FirstName," ", s.LastName) AS StudentName, c.CourseName FROM Students s
INNER JOIN enrollments e ON s.StudentId = e.StudentId
INNER JOIN courses c ON e.CourseId = c.CourseId
GROUP BY s.StudentId, c.CourseName;
+-----------+-----------------+-----------------------------------+
| StudentId | StudentName     | CourseName                        |
+-----------+-----------------+-----------------------------------+
|         1 | John Doe        | Introduction to SQL               |
|         2 | Jane Smith      | Data structures                   |
|         1 | John Doe        | Advanced Database Systems         |
|         1 | John Doe        | Linear Algebra                    |
|         2 | Jane Smith      | Web Development Foundations       |
|         2 | Jane Smith      | Probability and Statistics        |
|         3 | Robert Johnson  | Introduction to SQL               |
|         3 | Robert Johnson  | Design and Analysis of Algorithms |
|         3 | Robert Johnson  | Technical Writing & Comm.         |
|         4 | Emily Davis     | Data structures                   |
|         4 | Emily Davis     | Principles of Microeconomics      |
|         5 | Michael Brown   | Introduction to SQL               |
|         5 | Michael Brown   | Corporate Finance Analytics       |
|         6 | Sophia Wilson   | Web Development Foundations       |
|         6 | Sophia Wilson   | Linear Algebra                    |
|         7 | David Miller    | Advanced Database Systems         |
|         7 | David Miller    | Probability and Statistics        |
|         8 | Olivia Garcia   | Design and Analysis of Algorithms |
|         9 | James Rodriguez | Principles of Microeconomics      |
|         9 | James Rodriguez | Technical Writing & Comm.         |
+-----------+-----------------+-----------------------------------+

--9. LEFT JOIN: Retrieve students and their corresponding courses. If any.
SELECT 
    s.StudentId, 
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    c.CourseId, 
    c.CourseName
FROM students s
LEFT JOIN enrollments e ON s.StudentId = e.StudentId
LEFT JOIN courses c ON e.CourseId = c.CourseId
ORDER BY s.StudentId, c.CourseId;
+-----------+-----------------+----------+-----------------------------------+
| StudentId | StudentName     | CourseId | CourseName                        |
+-----------+-----------------+----------+-----------------------------------+
|         1 | John Doe        |      101 | Introduction to SQL               |
|         1 | John Doe        |      103 | Advanced Database Systems         |
|         1 | John Doe        |      108 | Linear Algebra                    |
|         2 | Jane Smith      |      102 | Data structures                   |
|         2 | Jane Smith      |      104 | Web Development Foundations       |
|         2 | Jane Smith      |      109 | Probability and Statistics        |
|         3 | Robert Johnson  |      101 | Introduction to SQL               |
|         3 | Robert Johnson  |      105 | Design and Analysis of Algorithms |
|         3 | Robert Johnson  |      110 | Technical Writing & Comm.         |
|         4 | Emily Davis     |      102 | Data structures                   |
|         4 | Emily Davis     |      106 | Principles of Microeconomics      |
|         5 | Michael Brown   |      101 | Introduction to SQL               |
|         5 | Michael Brown   |      107 | Corporate Finance Analytics       |
|         6 | Sophia Wilson   |      104 | Web Development Foundations       |
|         6 | Sophia Wilson   |      108 | Linear Algebra                    |
|         7 | David Miller    |      103 | Advanced Database Systems         |
|         7 | David Miller    |      109 | Probability and Statistics        |
|         8 | Olivia Garcia   |      105 | Design and Analysis of Algorithms |
|         9 | James Rodriguez |      106 | Principles of Microeconomics      |
|         9 | James Rodriguez |      110 | Technical Writing & Comm.         |
|        10 | Ava Martinez    |     NULL | NULL                              |
+-----------+-----------------+----------+-----------------------------------+

--10. SUBQUERY: Find students enrolled in courses that have more than 3 students.
SELECT 
    StudentId, 
    FirstName, 
    LastName, 
    Email
FROM students
WHERE StudentId IN (
    SELECT StudentId 
    FROM enrollments 
    WHERE CourseId IN (
        SELECT CourseId 
        FROM enrollments 
        GROUP BY CourseId 
        HAVING COUNT(StudentId) >= 3
    )
);
+-----------+-----------+----------+--------------------+
| StudentId | FirstName | LastName | Email              |
+-----------+-----------+----------+--------------------+
|         1 | John      | Doe      | john.doe@gmail.com |
|         3 | Robert    | Johnson  | robert.j@gmail.com |
|         5 | Michael   | Brown    | mbrown@outlook.com |
+-----------+-----------+----------+--------------------+

--11. Extract the year from the EnrollmentDate of students.
SELECT YEAR(EnrollmentDate) as EnrollmentYear from enrollments;
+----------------+
| EnrollmentYear |
+----------------+
|           2022 |
|           2021 |
|           2023 |
|           2023 |
|           2022 |
|           2022 |
|           2023 |
|           2023 |
|           2024 |
|           2024 |
|           2024 |
|           2022 |
|           2023 |
|           2024 |
|           2025 |
|           2021 |
|           2021 |
|           2023 |
|           2023 |
|           2023 |
+----------------+

--12. Calculate the running total of students enrolled in courses.
SELECT 
    EnrollmentId,
    StudentId,
    CourseId,
    EnrollmentDate,
    COUNT(*) OVER (ORDER BY EnrollmentDate, EnrollmentId) AS RunningTotalStudents
FROM enrollments;
+--------------+-----------+----------+----------------+----------------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate | RunningTotalStudents |
+--------------+-----------+----------+----------------+----------------------+
|           16 |         7 |      103 | 2021-01-10     |                    1 |
|            2 |         2 |      102 | 2021-08-01     |                    2 |
|           17 |         7 |      109 | 2021-08-01     |                    3 |
|            5 |         2 |      104 | 2022-01-15     |                    4 |
|            1 |         1 |      101 | 2022-08-01     |                    5 |
|            6 |         2 |      109 | 2022-08-01     |                    6 |
|           12 |         5 |      101 | 2022-08-01     |                    7 |
|            3 |         1 |      103 | 2023-01-15     |                    8 |
|           13 |         5 |      107 | 2023-01-15     |                    9 |
|           19 |         9 |      106 | 2023-01-15     |                   10 |
|            4 |         1 |      108 | 2023-08-01     |                   11 |
|            7 |         3 |      101 | 2023-08-01     |                   12 |
|            8 |         3 |      105 | 2023-08-01     |                   13 |
|           18 |         8 |      105 | 2023-08-01     |                   14 |
|           20 |         9 |      110 | 2023-08-01     |                   15 |
|            9 |         3 |      110 | 2024-01-15     |                   16 |
|           10 |         4 |      102 | 2024-01-15     |                   17 |
|           11 |         4 |      106 | 2024-08-01     |                   18 |
|           14 |         6 |      104 | 2024-08-01     |                   19 |
|           15 |         6 |      108 | 2025-01-15     |                   20 |
+--------------+-----------+----------+----------------+----------------------+

--13. Label student "Senior" or "Junior" bases on their enrollment.
--(If the enrollment date is more than 4 year from current date than "Senior" otherwise "Junior").
SELECT 
    StudentId,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE 
        WHEN DATEDIFF(CURDATE(), EnrollmentDate) > 1461 THEN 'Senior'
        ELSE 'Junior'
    END AS StudentStatus
FROM students
ORDER BY EnrollmentDate ASC;
+-----------+-----------+-----------+----------------+---------------+
| StudentId | FirstName | LastName  | EnrollmentDate | StudentStatus |
+-----------+-----------+-----------+----------------+---------------+
|         7 | David     | Miller    | 2021-01-10     | Senior        |
|         2 | Jane      | Smith     | 2021-08-01     | Senior        |
|         1 | John      | Doe       | 2022-08-01     | Senior        |
|         5 | Michael   | Brown     | 2022-08-01     | Senior        |
|         9 | James     | Rodriguez | 2023-01-15     | Junior        |
|         3 | Robert    | Johnson   | 2023-08-01     | Junior        |
|         8 | Olivia    | Garcia    | 2023-08-01     | Junior        |
|         4 | Emily     | Davis     | 2024-01-15     | Junior        |
|         6 | Sophia    | Wilson    | 2024-08-01     | Junior        |
|        10 | Ava       | Martinez  | 2025-08-01     | Junior        |
+-----------+-----------+-----------+----------------+---------------+