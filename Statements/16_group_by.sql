-- Example of GROUP BY in SQL
-- This query groups employees by their department and calculates the total salary for each department.

SELECT 
    department_id,
    SUM(salary) AS total_salary
FROM 
    employees
GROUP BY 
    department_id;


-- Example of GROUP BY with HAVING
-- This query groups employees by their department and filters for departments with a total salary greater than 100,000.
SELECT 
    department_id,
    SUM(salary) AS total_salary
FROM
    employees
GROUP BY
    department_id
HAVING
    SUM(salary) > 100000;