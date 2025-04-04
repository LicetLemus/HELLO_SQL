-- Example of MIN and MAX in SQL

-- Create a sample table
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 400.00),
(4, 'Monitor', 300.00),
(5, 'Keyboard', 50.00);

-- Use MIN to find the lowest price
SELECT MIN(Price) AS LowestPrice
FROM Products;

-- Use MAX to find the highest price
SELECT MAX(Price) AS HighestPrice
FROM Products;

-- Clean up the table
DROP TABLE Products;

