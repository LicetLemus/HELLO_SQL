-- Example of using the LIKE operator in SQL
SELECT *
FROM Employees
WHERE FirstName LIKE 'J%';

-- Explanation:
-- This query retrieves all employees whose first name starts with the letter 'J'.
-- The '%' is a wildcard that matches zero or more characters.

-- Example 2: Find employees whose last name ends with 'son'
SELECT *
FROM Employees
WHERE LastName LIKE '%son';

-- Example 3: Find employees whose first name contains 'an'
SELECT *
FROM Employees
WHERE FirstName LIKE '%an%';

-- Example 4: Find employees whose first name starts with any character followed by 'a'
SELECT *
FROM Employees
WHERE FirstName LIKE '_a%';

-- Example 5: Find employees whose last name is exactly 5 characters long
SELECT *
FROM Employees
WHERE LastName LIKE '_____';

SELECT * FROM users where email LIKE '%gmail.com';