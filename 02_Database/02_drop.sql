-- The DROP statement in SQL is used to delete an entire database object such as a table, view, index, or database.
-- It is a Data Definition Language (DDL) command and is irreversible, meaning all data and structure associated 
-- with the object will be permanently removed.

-- Syntax:
-- DROP object_type object_name;

-- Parameters:
-- object_type: Specifies the type of object to be dropped (e.g., TABLE, DATABASE, VIEW, INDEX).
-- object_name: Specifies the name of the object to be dropped.

-- Example 1: Dropping a table
-- This will permanently delete the "employees" table and all its data.
DROP TABLE employees;

-- Example 2: Dropping a database
-- This will permanently delete the "company_db" database and all its tables and data.
DROP DATABASE company_db;

-- Example 3: Dropping a view
-- This will permanently delete the "employee_view" view.
DROP VIEW employee_view;

-- Example 4: Dropping an index
-- This will permanently delete the "idx_employee_name" index.
DROP INDEX idx_employee_name;

-- Note:
-- - Use the DROP statement with caution as it cannot be undone.
-- - Ensure you have a backup of the data if needed before executing a DROP statement.