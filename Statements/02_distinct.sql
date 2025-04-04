-- Example 1: Using DISTINCT to remove duplicate values in a single column
SELECT DISTINCT country
FROM customers;

-- Example 2: Using DISTINCT with multiple columns
SELECT DISTINCT city, state
FROM addresses;

-- Example 3: Counting distinct values in a column
SELECT COUNT(DISTINCT product_id) AS unique_products
FROM orders;

-- Example 4: Using DISTINCT with an aggregate function
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM sales;

-- Example 5: Combining DISTINCT with WHERE clause
SELECT DISTINCT department
FROM employees
WHERE salary > 50000;