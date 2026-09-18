
-- SALES PERFORMANCE ANALYSIS
-- SQLite SQL Queries

-- Total Revenue
SELECT ROUND(SUM(Sales), 2) AS Total_Revenue
FROM sales;

-- Total Profit
SELECT ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales;

-- Total Orders
SELECT COUNT(DISTINCT "Order ID") AS Total_Orders
FROM sales;

-- Total Customers
SELECT COUNT(DISTINCT "Customer ID") AS Total_Customers
FROM sales;

-- Average Order Value
SELECT ROUND(
    SUM(Sales) / COUNT(DISTINCT "Order ID"), 2
) AS Average_Order_Value
FROM sales;

-- Profit Margin
SELECT ROUND(
    SUM(Profit) * 100.0 / SUM(Sales), 2
) AS Profit_Margin_Percent
FROM sales;

-- Revenue by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM sales
GROUP BY Region
ORDER BY Revenue DESC;

-- Revenue by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;

-- Top 10 Products
SELECT
    "Product Name",
    ROUND(SUM(Sales), 2) AS Revenue,
    ROUND(SUM(Profit), 2) AS Profit
FROM sales
GROUP BY "Product Name"
ORDER BY Revenue DESC
LIMIT 10;
