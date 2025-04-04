-- Example of using COUNT to get the number of rows/result in a table
SELECT COUNT(*) AS total_rows
FROM your_table_name;

-- Example of using COUNT with a specific column (ignores NULL values)
SELECT COUNT(column_name) AS non_null_values
FROM your_table_name;

-- Example of using COUNT with a condition
SELECT COUNT(*) AS active_users
FROM users
WHERE status = 'active';