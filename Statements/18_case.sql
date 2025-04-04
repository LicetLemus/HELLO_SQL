SELECT 
    employee_id,
    first_name,
    last_name,
    salary,
    CASE 
        WHEN salary < 3000 THEN 'Low'
        WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employees;

-- This query selects the employee ID, first name, last name, and salary from the employees table.
-- It uses a CASE statement to categorize the salary into three categories: 'Low', 'Medium', and 'High'.
-- The CASE statement checks the salary value and assigns the appropriate category based on the specified ranges.
-- The result set will include the employee ID, first name, last name, salary, and the corresponding salary category for each employee.
-- The CASE statement is a powerful tool for conditional logic in SQL queries.
-- It allows you to create new columns based on conditions, making it easier to analyze and interpret data.
-- The CASE statement can be used in various SQL clauses, including SELECT, WHERE, and ORDER BY.
-- In this example, we categorize employee salaries into three groups: 'Low', 'Medium', and 'High'.
-- The first condition checks if the salary is less than 3000, assigning 'Low' to those employees.
-- The second condition checks if the salary is between 3000 and 7000, assigning 'Medium' to those employees.
-- Finally, if the salary does not meet either of the first two conditions, it is categorized as 'High'.