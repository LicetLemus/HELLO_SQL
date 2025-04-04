-- Example of using AVG() function in SQL
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- Example of using AVG() with a condition
SELECT department_id, AVG(salary) AS average_salary
FROM employees
WHERE hire_date > '2020-01-01'
GROUP BY department_id;

-- Example of using AVG() with HAVING
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;

-- Example of using AVG() with ORDER BY
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC;

-- Example of using AVG() with JOIN
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Example of using AVG() with subquery
SELECT department_id, AVG(salary) AS average_salary
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1000)
GROUP BY department_id;