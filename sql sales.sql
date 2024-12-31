-- Create database
CREATE DATABASE SalesDB;
USE SalesDB;

-- Create table for sales records
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    SalespersonID INT NOT NULL,
    SalespersonName VARCHAR(50) NOT NULL,
    ProductSold VARCHAR(50) NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    SaleDate DATE NOT NULL
);

-- Insert sample data for 10 salespeople
INSERT INTO Sales (SalespersonID, SalespersonName, ProductSold, SaleAmount, SaleDate)
VALUES
(101, 'Alice Johnson', 'Laptop', 1200.50, '2024-06-01'),
(102, 'Bob Smith', 'Smartphone', 800.00, '2024-06-02'),
(103, 'Carol White', 'Headphones', 150.75, '2024-06-03'),
(104, 'David Brown', 'Monitor', 300.00, '2024-06-04'),
(105, 'Eve Davis', 'Tablet', 400.99, '2024-06-05'),
(106, 'Frank Miller', 'Keyboard', 80.50, '2024-06-06'),
(107, 'Grace Wilson', 'Mouse', 40.25, '2024-06-07'),
(108, 'Hank Moore', 'Printer', 250.00, '2024-06-08'),
(109, 'Ivy Taylor', 'Scanner', 320.00, '2024-06-09'),
(110, 'Jack Lee', 'Router', 120.75, '2024-06-10');


-- How do you retrieve all the sales records from the table?

-- Query the table to see the data
SELECT * FROM Sales;

-- How do you find the total sales amount?
SELECT SUM(SaleAmount) AS TotalSales FROM Sales;

-- How do you find the salesperson with the highest sale amount?
SELECT SalespersonName, SaleAmount 
FROM Sales 
ORDER BY SaleAmount DESC 
LIMIT 1;

-- How do you count the total number of sales made?
SELECT COUNT(*) AS TotalSalesCount FROM Sales;

-- How do you retrieve sales that occurred after '2024-06-05'?
SELECT * 
FROM Sales 
WHERE SaleDate > '2024-06-05';

--  How do you display only the sales made by 'Alice Johnson'?
SELECT * 
FROM Sales 
WHERE SalespersonName = 'Alice Johnson';

-- How do you group sales by product and find the total sales amount for each product?
SELECT ProductSold, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductSold;

-- How do you find the average sale amount?
SELECT AVG(SaleAmount) AS AverageSaleAmount FROM Sales;

-- How do you find all sales where the sale amount is greater than $500?
SELECT * 
FROM Sales 
WHERE SaleAmount > 500;

--  How do you list all sales records in descending order by the sale amount?
SELECT * 
FROM Sales 
ORDER BY SaleAmount DESC;

