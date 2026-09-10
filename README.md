
# 🍕 Pizza Sales Analysis — SQL & Power BI

## 📌 Project Overview

The **Pizza Sales Analysis** project is an end-to-end data analytics project created using **MySQL and Microsoft Power BI**.

The objective of this project is to analyze pizza sales data and understand overall business performance through **sales, revenue, orders, pizza quantity, customer ordering patterns, pizza categories, pizza sizes, and top-performing products**.

The project uses **SQL for data analysis and KPI calculations** and **Power BI for interactive dashboard visualization**.

This project demonstrates how raw sales data can be transformed into meaningful business insights that can help a pizza business understand its sales performance and identify its best- and least-performing products.

---

# 🎯 Business Objectives

The main objectives of this analysis are:

* To measure overall sales performance.
* To calculate important business KPIs.
* To analyze daily and monthly order trends.
* To identify the busiest and slowest sales periods.
* To understand sales performance by pizza category.
* To analyze customer preference by pizza size.
* To identify the best-selling pizzas.
* To identify the least-selling pizzas.
* To analyze revenue and quantity sold.
* To understand ordering patterns.
* To provide an interactive Power BI dashboard for business users.

---

# 📂 Dataset Description

The dataset contains pizza order-level sales information.

### Main Columns

| Column           | Description                               |
| ---------------- | ----------------------------------------- |
| `pizza_id`       | Unique identifier for each pizza record   |
| `order_id`       | Unique identifier for each customer order |
| `pizza_name_id`  | Identifier of the pizza                   |
| `pizza_name`     | Name of the pizza                         |
| `pizza_category` | Category of the pizza                     |
| `pizza_size`     | Size of the pizza                         |
| `quantity`       | Number of pizzas sold                     |
| `order_date`     | Date on which the order was placed        |
| `order_time`     | Time at which the order was placed        |
| `unit_price`     | Price of one pizza                        |
| `total_price`    | Total value of the pizza sale             |

The dataset was imported into **MySQL** for data preparation and SQL analysis and then connected to **Power BI** for visualization.

---

# 🛠️ Tools & Technologies Used

### MySQL

Used for:

* Data cleaning
* Date conversion
* Data exploration
* KPI calculations
* Aggregations
* GROUP BY analysis
* ORDER BY analysis
* Filtering
* Revenue analysis
* Order analysis
* Pizza/category/size analysis

### Microsoft Power BI

Used for:

* Data visualization
* KPI cards
* Charts
* Trend analysis
* Category analysis
* Size analysis
* Product analysis
* Interactive dashboard

### SQL Concepts Used

* `SELECT`
* `SUM()`
* `COUNT()`
* `COUNT(DISTINCT)`
* `ROUND()`
* `GROUP BY`
* `ORDER BY`
* `WHERE`
* Date functions
* Aggregate functions
* Ranking and sorting logic

---

# 🔄 Project Workflow

The project was completed using the following workflow:

**Raw Dataset**

↓

**Data Import into MySQL**

↓

**Data Cleaning & Date Formatting**

↓

**SQL Data Analysis**

↓

**KPI Calculation**

↓

**Business Insights**

↓

**Power BI Data Connection**

↓

**Dashboard Development**

↓

**Final Sales Analysis**

---

# 🧹 Data Preparation & Cleaning

Before performing the analysis, the dataset was checked and prepared for analysis.

### 1. Date Formatting

The original order date was stored as text in the format:

`01-01-2015`

To perform date-based analysis in MySQL, the date was converted into a proper date format using `STR_TO_DATE()`.

This allowed analysis such as:

* Order Day
* Month
* Monthly trends
* Daily trends

---

### 2. Data Validation

The dataset was checked for:

* Correct data types
* Valid order dates
* Numeric sales values
* Quantity values
* Duplicate/order-level records
* Missing or inconsistent values

---

# 📊 KPI Analysis

The first part of the analysis focuses on important business KPIs.

## 1. Total Revenue

**Total Revenue** represents the overall sales generated from pizza orders.

SQL logic:

```sql
SELECT 
    ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizza_sales;
```

This KPI helps measure the overall revenue generated during the analyzed period.

---

## 2. Average Order Value

**Average Order Value (AOV)** represents the average amount spent per order.

```sql
SELECT 
    ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS Avg_Order_Value
FROM pizza_sales;
```

### Why it is useful

AOV helps the business understand how much revenue is generated from an average customer order.

---

## 3. Total Pizzas Sold

This KPI measures the total number of pizzas sold.

```sql
SELECT 
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales;
```

It provides an overall view of product demand.

---

## 4. Total Orders

This KPI measures the total number of unique customer orders.

```sql
SELECT 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;
```

This is important because one order can contain multiple pizzas.

---

## 5. Average Pizzas per Order

This metric measures the average number of pizzas purchased in each order.

Conceptually:

**Total Pizzas Sold ÷ Total Orders**

It helps understand the average order quantity.

---

# 📅 Time-Based Analysis

Time-based analysis was performed to understand when customers place orders.

## 1. Daily Order Trend

Orders were analyzed based on the day of the week.

This helps identify:

* Which days receive more orders
* Which days receive fewer orders
* Customer ordering patterns
* Potential peak days

---

## 2. Monthly Order Trend

Orders were analyzed month-wise to identify changes in demand over time.

This helps answer:

* Which months generate more orders?
* Which months have lower demand?
* Are there noticeable seasonal patterns?

---

## 3. Daily Revenue Trend

Revenue was analyzed based on order dates to understand daily sales performance.

This helps identify high-revenue and low-revenue periods.

---

## 4. Monthly Revenue Trend

Monthly revenue analysis helps management understand overall sales movement over the year.

It can be used to identify:

* High-performing months
* Low-performing months
* Sales fluctuations
* Seasonal demand patterns

---

# 🍕 Pizza Category Analysis

The project analyzes sales performance across different pizza categories.

Examples of categories include:

* Classic
* Supreme
* Chicken
* Veggie

The analysis includes:

### Revenue by Category

Shows which category contributes the most revenue.

### Quantity Sold by Category

Shows which category has the highest product demand.

### Orders by Category

Shows the number of orders associated with each category.

### Business Value

Category-level analysis helps the business understand customer preferences and decide which categories should receive more attention in promotions and inventory planning.

---

# 📏 Pizza Size Analysis

Pizza sales were also analyzed according to pizza size.

Examples include:

* Small
* Medium
* Large
* Extra Large
* XXL

The analysis covers:

* Revenue by size
* Quantity sold by size
* Orders by size
* Contribution of each size to total sales

### Business Value

This analysis helps identify which pizza sizes are most preferred by customers.

It can support decisions related to:

* Inventory planning
* Pricing
* Promotions
* Production planning

---

# 🏆 Best-Selling Pizza Analysis

The project identifies the pizzas that perform the best based on sales quantity/orders/revenue.

The analysis helps answer:

* Which pizzas are most popular?
* Which products generate high sales?
* Which pizzas should be promoted?
* Which products contribute significantly to revenue?

The **Top 5 Best-Selling Pizzas** can be highlighted in the Power BI dashboard.

---

# 📉 Least-Selling Pizza Analysis

The project also identifies pizzas with comparatively lower sales performance.

This analysis helps management understand:

* Which products have low demand?
* Which pizzas may need promotional support?
* Which products may require pricing or menu review?

The bottom-performing products can be investigated further before making business decisions.

---

# 💰 Revenue Analysis

Revenue was analyzed from multiple business perspectives.

### Revenue by:

* Pizza
* Category
* Size
* Day
* Month

This provides a detailed view of where the business generates its revenue.

---

# 📦 Quantity Analysis

Quantity sold was analyzed to understand product demand.

The analysis helps distinguish between:

* Products that sell frequently
* Products that generate higher revenue because of higher prices
* Products with lower overall demand

This is useful because **revenue and quantity are not always the same measure of performance**.

---

# 📊 Power BI Dashboard

The SQL analysis was converted into an interactive **Power BI dashboard**.

The dashboard provides a visual summary of pizza sales performance.

## Dashboard KPI Cards

The dashboard includes important KPIs such as:

* **Total Revenue**
* **Average Order Value**
* **Total Orders**
* **Total Pizzas Sold**
* **Average Pizzas per Order**

These KPIs provide an immediate overview of business performance.

---


# 🔍 Key Business Questions Answered

This project answers several practical business questions:

1. What is the total revenue generated?
2. What is the average order value?
3. How many total orders were placed?
4. How many pizzas were sold?
5. How many pizzas are ordered on average per order?
6. Which day receives the highest number of orders?
7. Which month performs best in terms of orders/revenue?
8. Which pizza category generates the highest revenue?
9. Which pizza category sells the highest quantity?
10. Which pizza size is most popular?
11. Which pizzas are the best sellers?
12. Which pizzas are the least sellers?
13. How does sales performance change over time?
14. Which products contribute most to overall business performance?

---

# 💡 Business Insights

The analysis can help a pizza business make data-driven decisions related to:

### Product Strategy

Identify the pizzas that customers prefer the most and focus on high-performing products.

### Inventory Planning

Use size and category demand to plan ingredients and inventory more efficiently.

### Marketing

Promote popular products and consider targeted offers for products with lower demand.

### Pricing Strategy

Compare revenue contribution across pizza sizes and categories.

### Operational Planning

Use daily and monthly order patterns to better plan staff, ingredients, and production capacity.

---

# 📌 Project Highlights

### SQL Analysis

* Calculated business KPIs using MySQL.
* Performed aggregation and grouping analysis.
* Converted text-based dates into proper date format.
* Analyzed sales by day, month, category, size, and pizza.
* Used `COUNT(DISTINCT order_id)` for accurate order-level analysis.
* Used sorting and filtering to identify top and bottom performers.

### Power BI Analysis

* Created an interactive sales dashboard.
* Designed KPI cards for quick business performance tracking.
* Created trend-based visualizations.
* Compared categories and pizza sizes.
* Highlighted best- and least-performing pizzas.
* Presented SQL findings in an easy-to-understand visual format.

---


# 🖥️ Dashboard Preview

The Power BI dashboard provides an interactive view of the pizza sales analysis, including KPIs, sales trends, category performance, size analysis, and top/bottom-performing pizzas.


---

# 📄 SQL Queries

All SQL queries used for this project are available in:

```text
SQL/Pizza_Sales_Analysis.sql
```

The SQL file contains queries for:

* KPI calculations
* Revenue analysis
* Order analysis
* Pizza quantity analysis
* Daily analysis
* Monthly analysis
* Category analysis
* Size analysis
* Top-performing pizzas
* Low-performing pizzas

---

# 📊 Power BI File

The complete Power BI dashboard is available in:

```text
PowerBI/Pizza_Sales_Dashboard.pbix
```

The dashboard can be opened in **Microsoft Power BI Desktop**.

---

# 🎯 Skills Demonstrated

This project demonstrates practical skills in:

* SQL
* MySQL
* Data Cleaning
* Data Transformation
* Data Analysis
* Business KPI Analysis
* Aggregation
* Date Analysis
* Sales Analysis
* Product Analysis
* Power BI
* Data Visualization
* Dashboard Development
* Business Insight Generation

---

# 🚀 Conclusion

The **Pizza Sales Analysis** project demonstrates an end-to-end approach to data analytics, starting from raw sales data and transforming it into meaningful business insights.

Using **MySQL**, the data was analyzed through SQL queries and important KPIs were calculated.

Using **Power BI**, these findings were transformed into an interactive dashboard that makes it easier to understand sales trends, customer ordering patterns, product performance, category performance, and pizza size preferences.

Overall, this project demonstrates how **SQL and Power BI can be used together to convert raw business data into actionable insights and support data-driven decision-making.**

---

## 👩‍💻 Author

**Sweety Sinha**

Aspiring Data Analyst | SQL | Power BI | Advanced Excel | DAX

GitHub:
`https://github.com/Sweety555514`
