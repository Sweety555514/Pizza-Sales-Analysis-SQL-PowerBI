-- Table
SELECT * FROM pizza_sales;

-- Total Revenue
select round(sum(total_price),2) as Total_Revenue from pizza_sales;

-- Average Order Value
SELECT round(sum(total_price)/count(distinct order_id),2) as 
Avg_Order_Value FROM pizza_sales;


-- Total Pizza Sold
SELECT SUM(quantity) as Total_Pizza_Sold FROM pizza_sales;

-- Total Orders 
SELECT COUNT(DISTINCT order_id) Total_Orders FROM pizza_sales;

-- Average Pizza Per Order 
SELECT ROUND(sum(quantity)/count(distinct order_id),2) as 
Avg_Pizza_Per_Order 
FROM pizza_sales;	

-- Daily Trend for Total Orders.

SELECT DAYNAME(order_date_new) AS Order_Day,
       COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_id > 0
GROUP BY DAYNAME(order_date_new);

-- Monthly Trend for Total Orders.
SELECT MONTHNAME(order_date_new) AS Month_Name,
       COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_id > 0
GROUP BY MONTHNAME(order_date_new);


-- Percentage of Sales by Pizza Category.
SELECT pizza_category,ROUND(SUM(total_price)*100/
                       (SELECT SUM(total_price)FROM pizza_sales),2) AS PCT_Sales
FROM pizza_sales
GROUP BY pizza_category;

-- Percentage of Sales by pizza size.
SELECT pizza_size,ROUND(SUM(total_price)*100/
                 (SELECT SUM(total_price)FROM pizza_sales),2) AS PCT_Pizza_Size
FROM pizza_sales
GROUP BY pizza_size;


-- Top 5 best sellers by Revenue.
SELECT pizza_name,ROUND(SUM(total_price),2) AS Total_Revenue
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC 
LIMIT 5;

-- Bottom 5 best sellers by Revenue.
SELECT pizza_name,ROUND(SUM(total_price),2) AS Total_Revenue
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

-- 12.. Top  5 best sellers by Total Quantity.

SELECT pizza_name,SUM(Quantity) AS Total_Quantity
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC
LIMIT 5;

-- Bottom 5 best sellers by Total Quantity..

SELECT pizza_name,SUM(Quantity) AS Total_Quantity
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC
LIMIT 5;


-- Top 5 best sellers by Total Orders.

SELECT pizza_name,COUNT(DISTINCT order_id) AS Total_Orders
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;

-- Bottom 5 best sellers by Total Orders.

SELECT pizza_name,COUNT(DISTINCT order_id) AS Total_Orders
                    FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
LIMIT 5;











