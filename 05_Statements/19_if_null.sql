-- The IFNULL() function in SQL is used to return a specified value if the expression is NULL.
-- If the expression is not NULL, it returns the expression itself.

-- Syntax:
-- IFNULL(expression, value_if_null)

-- Example 1: Basic usage
SELECT IFNULL(NULL, 'Default Value') AS Result;
-- Output: 'Default Value' (since the first argument is NULL)

-- Example 2: Using IFNULL with a column
-- Assume we have a table named 'employees' with the following data:
-- | id | name    | bonus  |
-- |----|---------|--------|
-- | 1  | Alice   | 500    |
-- | 2  | Bob     | NULL   |
-- | 3  | Charlie | 300    |

SELECT name, IFNULL(bonus, 0) AS bonus
FROM employees;
-- Output:
-- | name    | bonus |
-- |---------|-------|
-- | Alice   | 500   |
-- | Bob     | 0     |
-- | Charlie | 300   |

-- Example 3: Using IFNULL in calculations
SELECT name, salary + IFNULL(bonus, 0) AS total_compensation
FROM employees;
-- This ensures that NULL values in the 'bonus' column do not affect the calculation.

-- Note: IFNULL is specific to MySQL. In other databases like SQL Server, use ISNULL(), 
-- and in PostgreSQL, use COALESCE() for similar functionality.