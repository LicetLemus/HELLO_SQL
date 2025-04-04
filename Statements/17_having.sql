-- Example of using HAVING clause, where we filter groups based on aggregate functions
-- This query selects the department and the count of employees in each department
-- but only includes departments with more than 5 employees.
-- It uses the HAVING clause to filter the results after grouping by department.


SELECT department, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(employee_id) > 5;