-- The DELETE statement is used to remove rows from a table in a database.
-- It allows you to specify which rows to delete using a WHERE clause.
-- If the WHERE clause is omitted, all rows in the table will be deleted.
-- Use DELETE carefully, as it permanently removes data from the table.

-- Syntax:
-- DELETE FROM table_name
-- WHERE condition;

-- Example 1: Delete specific rows based on a condition
-- This example deletes all rows from the "employees" table where the "department" is 'Sales'.
DELETE FROM employees
WHERE department = 'Sales'; -- important: Always specify a WHERE clause to avoid deleting all rows

-- Example 2: Delete all rows from a table
-- This example deletes all rows from the "orders" table. Note that the table structure remains intact.
DELETE FROM orders;

-- Note:
-- - Always use a WHERE clause to avoid accidentally deleting all rows.
-- - To delete all rows but reset the auto-increment counter, consider using the TRUNCATE statement instead.
-- - Ensure you have a backup of your data before performing delete operations.