-- Example of using SUM in SQL
-- This query calculates the total sales from a sales table.

CREATE TABLE Sales (
    SaleID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductName, Quantity, Price)
VALUES
(1, 'Product A', 2, 10.50),
(2, 'Product B', 1, 20.00),
(3, 'Product C', 3, 15.00);

-- Calculate the total revenue
SELECT SUM(Quantity * Price) AS TotalRevenue
FROM Sales;

-- Example of using SUM with a condition
-- Calculate the total revenue for a specific product
SELECT SUM(Quantity * Price) AS TotalRevenueForProductA
FROM Sales
WHERE ProductName = 'Product A';

-- Example of using SUM with GROUP BY
-- Calculate total sales for each product
SELECT ProductName, SUM(Quantity * Price) AS TotalRevenue
FROM Sales
GROUP BY ProductName;

-- Example of using SUM with HAVING
-- Calculate total sales for each product and filter for products with total revenue greater than 20
SELECT ProductName, SUM(Quantity * Price) AS TotalRevenue
FROM Sales
GROUP BY ProductName
HAVING SUM(Quantity * Price) > 20;