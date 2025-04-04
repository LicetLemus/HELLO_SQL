-- The UNION operator is used to combine the result sets of two or more SELECT statements.
-- It removes duplicate rows between the result sets by default.
-- Each SELECT statement within the UNION must have the same number of columns, and the columns must also have similar data types.
-- The columns in each SELECT statement must also be in the same order.

-- Example:
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;

-- In this example, the result will include all unique rows from both table1 and table2.
-- If you want to include duplicate rows, use UNION ALL instead:
-- SELECT column1, column2 FROM table1
-- UNION ALL
-- SELECT column1, column2 FROM table2;