-- This script demonstrates how to create a database, a table, and define its structure in SQL.

-- Step 1: Create a database
CREATE DATABASE ExampleDB;

-- Step 2: Use the created database
USE ExampleDB;

-- Step 3: Create a table within the database
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,       -- Primary key to uniquely identify each employee
    FirstName VARCHAR(50) NOT NULL,   -- First name of the employee
    LastName VARCHAR(50) NOT NULL,    -- Last name of the employee
    HireDate DATE,                    -- Date the employee was hired
    Salary DECIMAL(10, 2)             -- Employee's salary with two decimal places
);

-- Step 4: Insert example data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (1, 'John', 'Doe', '2023-01-15', 55000.00);

-- Step 5: Query the table to verify the data
SELECT * FROM Employees;