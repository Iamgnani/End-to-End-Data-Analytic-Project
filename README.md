
Superstore Sales Analysis
-
📊 Project Overview


This project analyzes the Sample Superstore sales dataset to understand sales performance, profitability, customer behavior, product performance, and regional trends.

The project follows an end-to-end data analytics workflow using Python, SQL Server, and Power BI. The main goal is to transform raw sales data into meaningful business insights through data cleaning, exploratory analysis, SQL queries, and an interactive Power BI dashboard.




## 🎯 Project Objectives

The analysis focuses on answering questions such as:

1.How are overall sales and profit performing?  
2.Which categories and sub-categories generate the most sales and profit?  
3.Which products are the top and bottom performers?  
4.Which regions and states contribute the most to sales and profit?  
5.Which customers generate the highest sales and profit?  
6.How does discounting relate to profitability?  
7.Which transactions, products, states, and sub-categories are loss-making?  
8.How have sales and profit changed over time?  
## 🛠️ Tools & Technologies


- Python – Data cleaning, preprocessing and exploratory data analysis.  
- Pandas – Data manipulation and analysis
- NumPy – Numerical operations.   
- Matplotlib / Seaborn – Data visualization.  
- SQL Server – Data storage, transformation and business analysis.  
- Power BI – Interactive dashboard and visualization.  
- DAX – KPI calculations and analytical measures.  
- GitHub – Project documentation and version control.         


## 🔄 Project Workflow


Raw Superstore Dataset   
        ↓
     Python  
Data Cleaning & EDA  
        ↓
SQL Server  
Data Storage & Business Analysis  
        ↓
Power BI  
Data Model + DAX + Dashboard  
        ↓
Business Insights  
        ↓
GitHub Portfolio  

## 🐍 Python Analysis

Python was used as the first stage of the project to prepare the raw dataset for analysis.

Key Activities  
- Loaded the raw Superstore dataset
- Inspected data types and structure
- Checked missing values
- Checked duplicate records
- Standardized column names
- Converted date columns into appropriate formats
- Cleaned numerical columns
- Performed exploratory data analysis
- Analyzed sales, profit, quantity and discount
- Identified trends and potential problem areas
- Exported the cleaned dataset for SQL analysis

## 🗄️ SQL Server Analysis

The cleaned dataset was loaded into SQL Server for structured business analysis.

SQL Analysis Included:-  
- Overall Sales, Profit and Quantity
- Profit Margin
- Sales by Category
- Sub-category performance
- Regional performance
- Segment analysis
- State-level sales
- Top 10 states by sales
- Bottom 10 states by profit
- Top products by sales
- Top products by profit
- Bottom products by profit
- Monthly sales trends
- Yearly performance
- Discount vs Profit analysis
- Loss-making transactions
- Customer sales and profitability
- Product ranking
- Category-wise product ranking
- Top 3 products in each category
- Month-over-month sales growth
- Running sales total
- Profitability classification
- Discount classification


## 📈 Power BI Dashboard

The final analysis was developed as a 3-pages interactive Power BI dashboard.

## Page 1 – Executive Sales Dashboard

Provides a high-level overview of business performance.

KPIs:

- Total Sales  
- Total Profit
- Total Orders
- Total Customers
- Profit Margin

Visuals:

- Monthly Sales & Profit Trend
- Sales by Category
- Profit by Category
- Sales by Region
- Top 10 Products by Sales

Filters:

- Year
- Region
- Category
- Sub-category
- Segment  

## Page 2 – Product & Customer Analysis

Focuses on product and customer performance.

KPIs:

- Total Sales
- Average Order Value
- Average Sales per Customer

Visuals:

-  Top 10 Products by Sales
-  Top 10 Products by Profit
-  Bottom 10 Products by Profit
-  Customer Sales vs Profit
-  Customer Performance Table
-  Category → Sub-category → Product analysis



    This page helps identify high-value customers, profitable products and products that negatively affect profitability.

##  Page 3 – Profitability & Regional Analysis

Focuses on profitability, discounts and geographical performance.

KPIs:

- Total Sales
- Total Profit
- Profit Margin
- Average Discount

Visuals:

- Sales & Profit by Region
- Profit Margin by Category
- Discount vs Profit
- Profit by Sub-category
- State Performance


    This page helps identify regions, states and sub-categories where profitability needs closer attention.  



## 📈 Key Data Insights - Super Store Sales Analysis


## 1. What is the overall business performance?

**Answer:**
The business generated approximately **$2.30 million in sales** and **$286.40K in profit**, with an overall profit margin of approximately **12.47%**.

**Business Insight:**
The company generates strong revenue, but there is still room to improve profitability through better discount management and product-level optimization.

---

## 2. Which category generates the highest sales?

**Answer:**
**Technology** is the highest-selling category, generating approximately **$836K in sales**.

**Business Insight:**
Technology products are a major contributor to overall revenue and should remain an important focus area.

---

## 3. Which category generates the highest profit?

**Answer:**
**Technology** generates the highest overall profit, at approximately **$145K**.

**Business Insight:**
Technology is strong from both a revenue and profitability perspective.

---

## 4. Which category has weak profitability?

**Answer:**
**Furniture** generates approximately **$742K in sales** but only around **$18K in profit**.

**Business Insight:**
Furniture has substantial revenue but relatively low profitability, indicating that product costs, discounts, or specific sub-categories need further investigation.

---

## 5. Which sub-category generates the highest sales?

**Answer:**
**Phones** is the highest-selling sub-category, generating approximately **$330K in sales**.

**Business Insight:**
Phones are an important revenue driver and represent a strong-performing product segment.

---

## 6. Which sub-category has the lowest profit?

**Answer:**
**Tables** are the biggest loss-making sub-category, generating approximately **-$17.7K in profit**.

**Business Insight:**
Tables require detailed investigation because the company is generating sales from this category but losing money overall.

---

## 7. Which region generates the highest sales?

**Answer:**
The **West region** generates the highest sales, at approximately **$725K**.

**Business Insight:**
The West is the strongest revenue-generating region and represents an important market for the business.

---

## 8. Which region generates the highest profit?

**Answer:**
The **West region** also generates the highest profit, at approximately **$108K**.

**Business Insight:**
The West performs strongly in both revenue and profitability.

---

## 9. Which states have strong sales performance?

**Answer:**
**California** has the highest sales among the states, followed by **New York**.

California generates approximately **$458K** in sales.

**Business Insight:**
These states represent major revenue-generating markets and can be important targets for customer retention and future growth initiatives.

---

## 10. Which states are generating losses?

**Answer:**
Several states have negative overall profit. Some notable examples include:

* **Texas:** approximately **-$25.7K**
* **Ohio:** approximately **-$17.0K**
* **Pennsylvania:** approximately **-$15.6K**
* **Illinois:** approximately **-$12.6K**
* **North Carolina:** approximately **-$7.5K**

**Business Insight:**
High-sales states with negative profitability require attention because revenue alone does not guarantee a profitable market.

---

## 11. Which products are the strongest sales performers?

**Answer:**
The analysis identifies the top products based on total sales using SQL ranking and Power BI Top-N analysis.

**Business Insight:**
Top-selling products should be monitored for inventory availability, customer demand and margin contribution.

---

## 12. Which products are poor profit performers?

**Answer:**
The bottom-product analysis identifies products with the lowest or negative total profit.

**Business Insight:**
These products should be investigated for high discounts, high costs, low selling prices, returns or other factors affecting profitability.

---

## 13. Is there a relationship between discounts and profit?

**Answer:**
The analysis shows that higher discounts are generally associated with weaker profitability, although the relationship should not be interpreted as proof that discounts directly cause lower profit.

**Business Insight:**
The company should review discount strategies, particularly for products or sub-categories where discounts are high and profit is already weak.

---

## 14. Which customers contribute the most sales?

**Answer:**
The customer analysis ranks customers based on total sales and profit.

**Business Insight:**
High-value customers can be identified for retention strategies, personalized offers and relationship management.

---

## 15. Are high-sales customers always highly profitable?

**Answer:**
No. A customer can generate high sales while producing relatively low profit because of discounts, product mix or other transaction-level factors.

**Business Insight:**
Customer performance should therefore be evaluated using both **Sales and Profit**, rather than sales alone.

---

## 16. Which products/categories require attention?

**Answer:**
The analysis particularly highlights **loss-making sub-categories such as Tables**, along with individual products and states that have negative profitability.

**Business Insight:**
Management should investigate these areas before increasing sales volume because additional sales may not necessarily improve overall profit.

---

## 17. How does sales performance change over time?

**Answer:**
Monthly and yearly analysis shows changes in sales and profit over time, allowing the business to identify growth periods, weaker periods and changes in profitability.

**Business Insight:**
Time-based analysis can help with demand planning, inventory management and sales forecasting.

---

# Overall Business Takeaways

### 1. Strong revenue does not always mean strong profitability

Some areas generate significant sales but contribute relatively little profit.

### 2. Technology is an important business driver

It performs strongly in both sales and profit.

### 3. Furniture requires profitability attention

Its sales contribution is high compared with its relatively low profit contribution.

### 4. Tables are a major profitability concern

The sub-category records an overall loss and should be investigated.

### 5. Regional performance varies

The West is the strongest region in both sales and profit, while other regions have different sales-to-profit relationships.

### 6. State-level analysis reveals hidden problems

Some states generate substantial sales while still producing negative profit.

### 7. Discount management is important

Higher discounts are associated with weaker profitability in the analysis, making discount strategy an important area for management review.

### 8. Customer analysis should consider profit as well as sales

High-revenue customers are not necessarily the most profitable customers.

### 9. Product-level analysis can identify opportunities

Top-performing products can be prioritized while loss-making products can be reviewed for pricing, discount and cost issues.

### 10. The dashboard converts analysis into actionable monitoring

The Power BI dashboard allows management to interactively investigate sales, profitability, products, customers, regions and states using filters and KPIs.

## 📌 Project Outcome


This project demonstrates an end-to-end approach to data analysis, starting from raw data preparation and moving through SQL-based analysis to an interactive Power BI reporting layer.

It showcases practical skills in data cleaning, exploratory analysis, SQL querying, business analysis, data modeling, DAX and dashboard development.

## 👨‍💻 Author

Vellore Gnanendra

Aspiring Data Analyst | Python | SQL | Power BI | Excel | Data Analytics