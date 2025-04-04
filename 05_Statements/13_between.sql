-- Example of using BETWEEN in SQL
-- This query retrieves records where the value in the 'age' column is between 18 and 30 (inclusive).

SELECT *
FROM users
WHERE age BETWEEN 18 AND 30;

-- Example of using BETWEEN with dates
-- This query retrieves records where the 'hire_date' is between '2020-01-01' and '2020-12-31'.
SELECT *
FROM employees
WHERE hire_date BETWEEN '2020-01-01' AND '2020-12-31';  

-- Example of using BETWEEN with a NOT condition    
-- This query retrieves records where the 'salary' is NOT between 50000 and 70000.
SELECT *
FROM employees
WHERE salary NOT BETWEEN 50000 AND 70000;

-- Example of using BETWEEN with a string
-- This query retrieves records where the 'name' is between 'A' and 'M'.
SELECT *
FROM employees
WHERE name BETWEEN 'A' AND 'M'; 

-- Example of using BETWEEN with a numeric range
-- This query retrieves records where the 'product_id' is between 100 and 200.
SELECT *
FROM products
WHERE product_id BETWEEN 100 AND 200;