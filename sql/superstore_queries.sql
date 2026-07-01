Query 1: Sales & Profit by Category
SELECT Category,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 2: Sub-Category Performance
SELECT "Sub-Category",
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC;

-- Query 3: Losing Money Products
SELECT "Sub-Category",
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY "Sub-Category"
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

-- Query 4: Region Performance
SELECT Region,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Query 5: Top 10 Best Selling Sub-Categories
SELECT "Sub-Category",
SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Quantity DESC
LIMIT 10;
