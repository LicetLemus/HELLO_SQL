-- Example of using the UPDATE statement in SQL
-- The UPDATE statement is used to modify existing records in a table.

-- Assume we have a table named 'employees' with the following structure:
-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     position VARCHAR(100),
--     salary DECIMAL(10, 2)
-- );

-- Update the salary of an employee with a specific ID
UPDATE employees
SET salary = 75000
WHERE id = 1; -- Important: Always specify a WHERE clause to avoid updating all rows

-- Update the position and salary of employees in a specific department
UPDATE employees
SET position = 'Senior Developer', salary = salary * 1.1
WHERE position = 'Developer';

-- Be cautious when using UPDATE without a WHERE clause, as it will update all rows in the table.
-- For example, the following query will set all salaries to 50000:
-- UPDATE employees
-- SET salary = 50000;

-- Always test your queries on a backup or in a test environment before running them on production data.