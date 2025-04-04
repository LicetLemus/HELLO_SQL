-- Basic SELECT statement to retrieve all columns from a table
SELECT *
FROM table_name;

-- Example: Selecting specific columns
SELECT column1, column2
FROM table_name;

-- Example: Using WHERE clause to filter rows
SELECT column1, column2
FROM table_name
WHERE condition;

-- Example: Ordering results
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC;

-- Example: Limiting the number of rows returned
SELECT column1, column2
FROM table_name
LIMIT 10;

-- Example: Using Aggregate Functions
SELECT COUNT(*)
FROM table_name;

-- Example: Using GROUP BY
SELECT column1, COUNT(*)