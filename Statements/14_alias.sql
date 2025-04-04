-- Example of column alias
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees;

-- Example of table alias
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Example of alias in calculations
SELECT salary, salary * 12 AS "Annual Salary"
FROM employees;

-- Example of alias with subquery
SELECT emp.first_name, emp.last_name, dept.department_name
FROM (SELECT * FROM employees WHERE salary > 5000) emp
JOIN departments dept ON emp.department_id = dept.department_id;