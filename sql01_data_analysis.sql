create database superstoreproject

use superstoreproject


CREATE TABLE SuperstoreSales
(
    row_id INT,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(150),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    [sub-category] VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(18,2),
    quantity INT,
    discount DECIMAL(10,2),
    profit DECIMAL(18,2)
);


select * from [dbo].[SampleSuperstore_cleaned]


SELECT COUNT(*) AS TotalRows
FROM [dbo].[SampleSuperstore_cleaned]



select * from INFORMATION_SCHEMA.columns 

INSERT INTO dbo.SuperstoreSales
(
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    [sub-category],
    product_name,
    sales,
    quantity,
    discount,
    profit
)
SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    CAST(sales AS DECIMAL(18,2)),
    quantity,
    CAST(discount AS DECIMAL(10,2)),
    CAST(profit AS DECIMAL(18,2))
FROM dbo.SampleSuperstore_cleaned

select * from [dbo].[SuperstoreSales]

SELECT COUNT(*) AS TotalRows
FROM dbo.SuperstoreSales

SELECT
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity,
    COUNT(DISTINCT order_id) AS Total_Orders,
    COUNT(DISTINCT customer_id) AS Total_Customers
FROM dbo.SuperstoreSales