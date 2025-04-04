-- The ALTER TABLE statement is used to modify an existing table in a database.
-- It allows you to add, delete, or modify columns, as well as add or drop constraints.

-- Syntax:
ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

-- Example 1: Adding a new column to a table
ALTER TABLE employees
ADD department_id INT;

-- Example 2: Dropping a column from a table
ALTER TABLE employees
DROP COLUMN middle_name;

-- Example 3: Modifying the data type of an existing column
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(10, 2);

-- Example 4: Adding a constraint to a table
ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary > 0);

-- Example 5: Dropping a constraint from a table
ALTER TABLE employees
DROP CONSTRAINT chk_salary;

-- Note: Always ensure you have a backup of your data before performing ALTER TABLE operations,
-- as some changes (like dropping a column) are irreversible.