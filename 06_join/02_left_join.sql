-- The LEFT JOIN keyword in SQL is used to combine rows from two or more tables 
-- based on a related column between them. It returns all records from the left 
-- table (the first table), and the matched records from the right table (the second table). 
-- If there is no match, NULL values are returned for columns from the right table.

-- Syntax:
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;

-- Example:
-- Suppose we have two tables:
-- Table: Employees
-- +----+----------+
-- | ID | Name     |
-- +----+----------+
-- | 1  | Alice    |
-- | 2  | Bob      |
-- | 3  | Charlie  |
-- +----+----------+
--
-- Table: Salaries
-- +----+--------+
-- | ID | Salary |
-- +----+--------+
-- | 1  | 50000  |
-- | 3  | 70000  |
-- +----+--------+
--
-- Query:
SELECT Employees.ID, Employees.Name, Salaries.Salary
FROM Employees
LEFT JOIN Salaries
ON Employees.ID = Salaries.ID;
--
-- Result:
-- +----+----------+--------+
-- | ID | Name     | Salary |
-- +----+----------+--------+
-- | 1  | Alice    | 50000  |
-- | 2  | Bob      | NULL   |
-- | 3  | Charlie  | 70000  |
-- +----+----------+--------+
--
-- In this example, the LEFT JOIN ensures that all employees are listed, even if 
-- they do not have a corresponding salary in the Salaries table. For Bob, who 
-- does not have a salary record, the Salary column is NULL.