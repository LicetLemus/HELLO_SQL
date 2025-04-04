-- Example 1: Order by a single column in ascending order
SELECT first_name, last_name, age
FROM employees
ORDER BY age;

-- Example 2: Order by a single column in descending order
SELECT first_name, last_name, age
FROM employees
ORDER BY age DESC;

-- Example 3: Order by multiple columns
SELECT first_name, last_name, age
FROM employees
ORDER BY last_name ASC, first_name ASC;

-- Example 4: Order by a calculated column
SELECT first_name, last_name, salary, salary * 0.1 AS bonus
FROM employees
ORDER BY bonus DESC;

-- Example 5: Order by a column with NULL values
SELECT first_name, last_name, department_id
FROM employees
ORDER BY department_id NULLS LAST;

-- Example 6: Order by using an alias
SELECT first_name, last_name, salary AS monthly_salary
FROM employees
ORDER BY monthly_salary DESC;

-- Example 7: Order by a column with a specific collation
SELECT first_name, last_name
FROM employees
ORDER BY last_name COLLATE 'utf8_general_ci' ASC;

-- Example 8: Order by a column with a specific locale
SELECT first_name, last_name
FROM employees
ORDER BY last_name COLLATE 'utf8_unicode_ci' ASC;

-- Example 9: Order by a column with a specific character set
SELECT first_name, last_name
FROM employees
ORDER BY last_name COLLATE 'utf8mb4_general_ci' ASC;