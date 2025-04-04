-- Example of using the NOT operator in SQL

-- Create a sample table
CREATE TABLE Employees (
    EmployeeID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'Finance', 55000),
(4, 'Diana', 'IT', 70000);

-- Query to find employees NOT in the IT department
SELECT *
FROM Employees
WHERE NOT Department = 'IT';

-- Query to find employees whose salary is NOT greater than 60000
SELECT *
FROM Employees
WHERE NOT Salary > 60000;

-- Clean up the table
DROP TABLE Employees;