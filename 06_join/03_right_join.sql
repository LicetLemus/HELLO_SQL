-- The RIGHT JOIN keyword is used to return all records from the right table (Table2),
-- and the matched records from the left table (Table1). If there is no match, 
-- NULL values will be returned for columns from the left table.

-- Syntax:
-- SELECT columns
-- FROM Table1
-- RIGHT JOIN Table2
-- ON Table1.column_name = Table2.column_name;

-- Example:
-- Suppose we have two tables:
-- Employees (EmployeeID, Name, DepartmentID)
-- Departments (DepartmentID, DepartmentName)

-- Employees Table:
-- +------------+--------+--------------+
-- | EmployeeID | Name   | DepartmentID |
-- +------------+--------+--------------+
-- | 1          | Alice  | 1            |
-- | 2          | Bob    | 2            |
-- | 3          | Charlie| NULL         |
-- +------------+--------+--------------+

-- Departments Table:
-- +--------------+----------------+
-- | DepartmentID | DepartmentName |
-- +--------------+----------------+
-- | 1            | HR             |
-- | 2            | IT             |
-- | 3            | Finance        |
-- +--------------+----------------+

-- Query:
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

-- Result:
-- +--------+----------------+
-- | Name   | DepartmentName |
-- +--------+----------------+
-- | Alice  | HR             |
-- | Bob    | IT             |
-- | NULL   | Finance        |
-- +--------+----------------+

-- In this example, the RIGHT JOIN ensures that all departments are listed, 
-- even if there are no employees assigned to them.