-- Example 1: Using WHERE with a numeric condition
SELECT * 
FROM employees
WHERE salary > 50000;

-- Example 2: Using WHERE with a string condition
SELECT * 
FROM customers
WHERE city = 'New York';

-- Example 3: Using WHERE with a date condition
SELECT * 
FROM orders
WHERE order_date >= '2023-01-01';

-- Example 4: Using WHERE with multiple conditions (AND)
SELECT * 
FROM products
WHERE price > 100 AND stock_quantity < 50;

-- Example 5: Using WHERE with multiple conditions (OR)
SELECT * 
FROM students
WHERE grade = 'A' OR grade = 'B';

-- Example 6: Using WHERE with a NOT condition
SELECT * 
FROM employees
WHERE NOT department = 'HR';

-- Example 7: Using WHERE with a LIKE operator
SELECT * 
FROM customers
WHERE email LIKE '%@gmail.com';

-- Example 8: Using WHERE with an IN operator
SELECT * 
FROM orders
WHERE status IN ('Pending', 'Shipped', 'Delivered');

-- Example 9: Using WHERE with a BETWEEN operator
SELECT * 
FROM sales
WHERE sale_amount BETWEEN 100 AND 500;

-- Example 10: Using WHERE with IS NULL
SELECT * 
FROM users
WHERE last_login IS NULL;

-- Example 11: Using WHERE with IS NOT NULL
SELECT *
FROM users
WHERE last_login IS NOT NULL;

-- Example 12: Using WHERE with a subquery
SELECT *
FROM employees
WHERE department_id IN (SELECT id FROM departments WHERE location = 'New York');

-- Example 13: Using WHERE with a subquery and EXISTS
SELECT *
FROM employees e
WHERE EXISTS (SELECT 1 FROM departments d WHERE d.id = e.department_id AND d.location = 'New York');

-- Example 14: Using WHERE with a subquery and NOT EXISTS
SELECT *
FROM employees e
WHERE NOT EXISTS (SELECT 1 FROM departments d WHERE d.id = e.department_id AND d.location = 'New York');