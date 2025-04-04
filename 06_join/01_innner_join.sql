-- The INNER JOIN keyword is used to combine rows from two or more tables 
-- based on a related column between them. It returns only the rows where 
-- there is a match in both tables.

-- Syntax:
-- SELECT column1, column2, ...
-- FROM table1
-- INNER JOIN table2
-- ON table1.common_column = table2.common_column;

-- Example:
-- Suppose we have two tables:
Employees (EmployeeID, Name, DepartmentID)
Departments (DepartmentID, DepartmentName)

-- To retrieve a list of employees along with their department names:
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

-- This query will return only the employees who have a matching DepartmentID 
-- in the Departments table.


-- Example in the database hello_mysql
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id

SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id

-- Example of relasioship m-n
-- Suppose we have two tables:
-- Students (StudentID, Name)
-- Courses (CourseID, CourseName)
-- Enrollments (StudentID, CourseID)
-- To retrieve a list of students along with the courses they are enrolled in:
SELECT Students.Name, Courses.CourseName
FROM Students
INNER JOIN Enrollments
ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses
ON Enrollments.CourseID = Courses.CourseID;
-- This query will return only the students who are enrolled in at least one course.

-- Example of relationship 1-n
-- Suppose we have two tables:
-- Authors (AuthorID, Name)
-- Books (BookID, Title, AuthorID)
-- To retrieve a list of books along with their authors:
SELECT Books.Title, Authors.Name
FROM Books          
INNER JOIN Authors
ON Books.AuthorID = Authors.AuthorID;
-- This query will return only the books that have a matching AuthorID in the Authors table.

-- Example of relationship 1-1
-- Suppose we have two tables:
-- Users (UserID, Name)
-- Profiles (ProfileID, UserID, Bio)
-- To retrieve a list of users along with their profiles:
SELECT Users.Name, Profiles.Bio
FROM Users
INNER JOIN Profiles
ON Users.UserID = Profiles.UserID;
-- This query will return only the users who have a matching ProfileID in the Profiles table.

-- Example of relationship 1-0
-- Suppose we have two tables:          
-- Customers (CustomerID, Name) 
-- Orders (OrderID, CustomerID, OrderDate)
-- To retrieve a list of customers along with their orders:
SELECT Customers.Name, Orders.OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- This query will return all customers, including those who have not placed any orders.

