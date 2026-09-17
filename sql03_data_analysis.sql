
SELECT * FROM [dbo].[SuperstoreSales]

--19. Rank products by sales
WITH ProductSales AS
(
    SELECT
        product_id,
        product_name,
        SUM(sales) AS total_sales
    FROM dbo.SuperstoreSales
    GROUP BY
        product_id,
        product_name
)
SELECT
    product_id,
    product_name,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM ProductSales
ORDER BY sales_rank

--20. Rank products within each category
WITH ProductSales AS
(
    SELECT
        category,
        product_id,
        product_name,
        SUM(sales) AS total_sales
    FROM dbo.SuperstoreSales
    GROUP BY
        category,
        product_id,
        product_name
)
SELECT
    category,
    product_id,
    product_name,
    total_sales,
    RANK() OVER (
        PARTITION BY category
        ORDER BY total_sales DESC
    ) AS category_rank
FROM ProductSales
ORDER BY
    category,
    category_rank

--21. Top 3 products in each category
WITH ProductSales AS
(
    SELECT
        category,
        product_id,
        product_name,
        SUM(sales) AS total_sales
    FROM dbo.SuperstoreSales
    GROUP BY
        category,
        product_id,
        product_name
),
RankedProducts AS
(
    SELECT
        category,
        product_id,
        product_name,
        total_sales,
        RANK() OVER (
            PARTITION BY category
            ORDER BY total_sales DESC
        ) AS product_rank
    FROM ProductSales
)
SELECT
    category,
    product_id,
    product_name,
    total_sales,
    product_rank
FROM RankedProducts
WHERE product_rank <= 3
ORDER BY
    category,
    product_rank

--22. Monthly sales with previous month
WITH MonthlySales AS
(
    SELECT
        YEAR(order_date) AS order_year,
        MONTH(order_date) AS order_month,
        SUM(sales) AS total_sales
    FROM dbo.SuperstoreSales
    GROUP BY
        YEAR(order_date),
        MONTH(order_date)
)
SELECT
    order_year,
    order_month,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY order_year, order_month
    ) AS previous_month_sales
FROM MonthlySales
ORDER BY
    order_year,
    order_month

--23. Month-over-month growth
WITH MonthlySales AS
(
    SELECT
        YEAR(order_date) AS order_year,
        MONTH(order_date) AS order_month,
        SUM(sales) AS total_sales
    FROM dbo.SuperstoreSales
    GROUP BY
        YEAR(order_date),
        MONTH(order_date)
),
MonthlyComparison AS
(
    SELECT
        order_year,
        order_month,
        total_sales,
        LAG(total_sales) OVER (
            ORDER BY order_year, order_month
        ) AS previous_month_sales
    FROM MonthlySales
)
SELECT
    order_year,
    order_month,
    total_sales,
    previous_month_sales,
    ROUND(
        (total_sales - previous_month_sales) * 100.0
        / NULLIF(previous_month_sales, 0),
        2
    ) AS MoM_Growth_Percentage
FROM MonthlyComparison
ORDER BY
    order_year,
    order_month

--24. Find loss-making sub-categories
SELECT
    category,
    [sub-category],
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM dbo.SuperstoreSales
GROUP BY
    category,
    [sub-category]
HAVING SUM(profit) < 0
ORDER BY total_profit ASC