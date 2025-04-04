-- Example of using CONCAT in SQL
SELECT 
    CONCAT('Hello, ', 'World!') AS greeting;

-- Example with table columns
CREATE TABLE employees (
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO employees (first_name, last_name)
VALUES ('John', 'Doe'), ('Jane', 'Smith');

SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM 
    employees;

-- Example with NULL values
CREATE TABLE products (
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);
INSERT INTO products (product_name, price)
VALUES ('Product A', 10.50), (NULL, 20.00);
SELECT 
    CONCAT(product_name, ' costs $', price) AS product_info
FROM
    products;

-- Example with multiple columns
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    order_date DATE
);
INSERT INTO orders (order_id, customer_name, order_date)
VALUES (1, 'Alice', '2023-01-01'), (2, 'Bob', '2023-02-01');
SELECT 
    CONCAT('Order ID: ', order_id, ', Customer: ', customer_name, ', Date: ', order_date) AS order_details
FROM
    orders;
    