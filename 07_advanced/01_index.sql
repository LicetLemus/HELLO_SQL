
-- Documentation: Index in SQL

-- An index in SQL is a database object that improves the speed of data retrieval operations on a table at the cost of additional storage and maintenance overhead. Indexes are created on columns that are frequently used in WHERE clauses, JOIN conditions, or ORDER BY clauses to enhance query performance.

-- Types of Indexes:
-- 1. Clustered Index: Sorts and stores the data rows in the table based on the key values. A table can have only one clustered index.
-- 2. Non-Clustered Index: Contains pointers to the actual data rows in the table. A table can have multiple non-clustered indexes.

-- Syntax to Create an Index:
CREATE INDEX index_name
ON table_name (column1, column2, ...);

-- Syntax to Create a Unique Index:
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);

-- Example:
-- Creating a non-clustered index on the "last_name" column of the "employees" table
CREATE INDEX idx_last_name
ON employees (last_name);

-- Example Query Using the Index:
-- The following query will benefit from the index created above
SELECT * 
FROM employees
WHERE last_name = 'Smith';

-- Notes:
-- 1. Indexes improve read performance but can slow down write operations (INSERT, UPDATE, DELETE) due to the need to maintain the index.
-- 2. Use indexes judiciously to avoid excessive storage usage and maintenance overhead.
-- 3. Avoid creating indexes on columns with low cardinality (e.g., columns with many duplicate values).

-- To Drop an Index:
DROP INDEX index_name ON table_name;
