-- Example of using NULL in SQL

-- Creating a table with NULL values
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2) NULL
);

-- Inserting data with NULL values
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, Bonus)
VALUES 
(1, 'John', 'Doe', 'HR', 50000, NULL),
(2, 'Jane', 'Smith', 'Finance', 60000, 5000),
(3, 'Mike', 'Brown', 'IT', 70000, NULL);

-- Querying rows with NULL values
SELECT * 
FROM Employees
WHERE Bonus IS NULL;

-- Using COALESCE to handle NULL values
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    COALESCE(Bonus, 0) AS BonusWithDefault
FROM Employees;

-- Checking for NULL explicitly
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    CASE 
        WHEN Bonus IS NULL THEN 'No Bonus'
        ELSE 'Has Bonus'
    END AS BonusStatus
FROM Employees;