-- The INSERT INTO statement is used to add new rows of data into a table.
-- It can be used in two forms:
-- 1. Specifying both the column names and the values to be inserted.
-- 2. Omitting the column names if values are provided for all columns in the table, in the correct order.

-- Syntax:
-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

-- Example:
-- Suppose we have a table named 'employees' with the following structure:
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- To insert a new employee into the 'employees' table:
INSERT INTO employees (id, name, position, salary)
VALUES (1, 'John Doe', 'Software Engineer', 75000.00);

-- Alternatively, if all columns are being inserted in the correct order:
INSERT INTO employees
VALUES (2, 'Jane Smith', 'Product Manager', 85000.00);