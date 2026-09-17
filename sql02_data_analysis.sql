--1. Overall Business KPIs

SELECT
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity,
    COUNT(DISTINCT order_id) AS Total_Orders,
    COUNT(DISTINCT customer_id) AS Total_Customers,
    AVG(discount) AS Average_Discount
FROM dbo.SuperstoreSales


--2. Profit Margin
SELECT
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS Profit_Margin_Percentage
FROM dbo.SuperstoreSales

--3. Sales by Category
SELECT
    category,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM dbo.SuperstoreSales
GROUP BY category
ORDER BY Total_Sales DESC

--4. Sub-Category Performance
SELECT
    category,
    [sub-category],
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM dbo.SuperstoreSales
GROUP BY
    category,
    [sub-category]
ORDER BY Total_sales DESC;

--5. Region Performance
SELECT
    region,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM dbo.SuperstoreSales
GROUP BY region
ORDER BY Total_Sales DESC

--6. Segment Analysis
SELECT
    segment,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY segment
ORDER BY Total_Sales DESC

--7. Sales by State
SELECT
    state,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY state
ORDER BY Total_Sales DESC

--8. Top 10 States by Sales
SELECT
    top 10 state,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY state
ORDER BY Total_Sales DESC

--9. Bottom 10 States by Profit
SELECT
    top 10 state,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY state
ORDER BY Total_Sales 

--10. Top 10 Products by Sales
SELECT
    top 10 product_id,
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY  product_id,
        product_name
ORDER BY Total_Sales Desc

--10. Top 10 Products by Sales
SELECT
    top 10 product_id,
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY  product_id,
        product_name
ORDER BY Total_Sales 

--11. Top 10 Products by Profit
SELECT
    top 10 product_id,
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY  product_id,
        product_name
ORDER BY total_profit desc

--12. Bottom 10 Products by Profit
SELECT
    top 10 product_id,
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(DISTINCT customer_id) AS Customers
FROM dbo.SuperstoreSales
GROUP BY  product_id,
        product_name
ORDER BY total_profit

--13. Monthly Sales Trend
SELECT
    YEAR(order_date) AS Order_Year,
    MONTH(order_date) AS Order_Month,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit
FROM dbo.SuperstoreSales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    Order_Year,
    Order_Month

--14. Yearly Performance
SELECT
    YEAR(order_date) AS Order_Year,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit
FROM dbo.SuperstoreSales
GROUP BY
    YEAR(order_date)
ORDER BY
    Order_Year
   
--15. Discount vs Profit
SELECT
    discount,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(*) AS Number_of_Orders
FROM dbo.SuperstoreSales
GROUP BY discount
ORDER BY discount

--16. Loss-Making Transactions
SELECT
    COUNT(*) AS Loss_Making_Transactions
FROM dbo.SuperstoreSales
WHERE profit < 0

--Calculating their Percentages

SELECT
    COUNT(CASE WHEN profit < 0 THEN 1 END) AS Loss_Transactions,
    COUNT(*) AS Total_Transactions,
    ROUND(
        COUNT(CASE WHEN profit < 0 THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS Loss_Transaction_Percentage
FROM dbo.SuperstoreSales




