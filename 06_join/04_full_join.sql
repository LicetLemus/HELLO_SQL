-- A FULL JOIN in SQL combines the results of both LEFT JOIN and RIGHT JOIN.
-- It returns all records from both tables, with NULLs in place where there is no match.
-- This is useful when you want to retain all data from both tables, regardless of whether there is a match.

-- Syntax:
-- SELECT column_list
-- FROM table1
-- FULL JOIN table2
-- ON table1.common_column = table2.common_column;

-- Example:
-- Suppose we have two tables:
-- Table1: Employees
-- +----+----------+
-- | ID | Name     |
-- +----+----------+
-- | 1  | Alice    |
-- | 2  | Bob      |
-- | 3  | Charlie  |
-- +----+----------+
--
-- Table2: Salaries
-- +----+--------+
-- | ID | Salary |
-- +----+--------+
-- | 2  | 5000   |
-- | 3  | 6000   |
-- | 4  | 7000   |
-- +----+--------+
--
-- Query:
SELECT Employees.ID, Employees.Name, Salaries.Salary
FROM Employees
FULL JOIN Salaries
ON Employees.ID = Salaries.ID;
--
-- Result:
-- +----+----------+--------+
-- | ID | Name     | Salary |
-- +----+----------+--------+
-- | 1  | Alice    | NULL   |
-- | 2  | Bob      | 5000   |
-- | 3  | Charlie  | 6000   |
-- | 4  | NULL     | 7000   |
-- +----+----------+--------+
--
-- In this result:
-- - Row with ID 1 is from Employees but has no matching record in Salaries.
-- - Row with ID 4 is from Salaries but has no matching record in Employees.
-- - Rows with IDs 2 and 3 have matching records in both tables.