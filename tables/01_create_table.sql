/*
-- Documentation for CREATE TABLE Statement --

The CREATE TABLE statement is used to create a new table in a database. 
It defines the table's structure, including its columns, data types, and constraints.

Syntax:
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
    columnN datatype constraint
);

Parameters:
- table_name: The name of the table to be created.
- column1, column2, ..., columnN: The names of the columns in the table.
- datatype: The data type of the column (e.g., INT, VARCHAR, DATE, etc.).
- constraint: Optional constraints for the column (e.g., PRIMARY KEY, NOT NULL, UNIQUE, etc.).

*/

Example:
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE,
    Salary DECIMAL(10, 2) CHECK (Salary > 0)
);

/*
Explanation of Example:
- The table "Employees" is created with five columns: EmployeeID, FirstName, LastName, HireDate, and Salary.
- EmployeeID is an integer and serves as the primary key.
- FirstName and LastName are strings with a maximum length of 50 characters and cannot be NULL.
- HireDate is a date column.
- Salary is a decimal column with a precision of 10 and scale of 2, and it must be greater than 0.

Notes:
- Ensure that the table name and column names follow the naming conventions of your database system.
- Use constraints to enforce data integrity and business rules.
*/