-- Example of using IN operator in SQL
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('Sales', 'Marketing', 'HR');

-- Example of using IN operator with a subquery
SELECT first_name, last_name, department
FROM employees
WHERE department IN (SELECT department_name FROM departments WHERE location = 'New York');

-- Example of using IN operator with a NOT condition        
SELECT first_name, last_name, department
FROM employees
WHERE department NOT IN ('Sales', 'Marketing', 'HR');

-- Example of using IN operator with a range
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('Sales', 'Marketing', 'HR') AND salary BETWEEN 50000 AND 100000;

-- Example of using IN operator with a list of values
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('Sales', 'Marketing', 'HR') AND hire_date IN ('2023-01-01', '2023-02-01');
