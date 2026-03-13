-- =============================================================
-- INSTACART E-COMMERCE DATA ANALYSIS PROJECT
-- Dataset: Instacart Market Basket Analysis

-- Objective:
-- Analyze customer purchasing behavior, basket size patterns,
-- product popularity, reorder trends, and customer retention.
-- =============================================================



-- 1. DATA VALIDATION

-- Count records in each table
SELECT COUNT(*) AS aisles_count
FROM aisles;

SELECT COUNT(*) AS departments_count
FROM departments;

SELECT COUNT(*) AS order_products_count
FROM order_products;

SELECT COUNT(*) AS orders_count
FROM orders

SELECT COUNT(*) AS products_count
FROM products;

-- 2. DATA EXPLORATION

-- Check first few rows of each datase
SELECT *
FROM orders
LIMIT 10

SELECT *
FROM aisles
LIMIT 10

SELECT *
FROM departments 
LIMIT 10

SELECT *
FROM order_products
LIMIT 10

SELECT *
FROM products
LIMIT 10


-- 3. CUSTOMER ORDER ANALYSIS

-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total number of unique customers
SELECT count(distinct user_id) as unique_users
FROM orders;

-- Average number of orders per customer
SELECT 
AVG(order_count) AS avg_order_per_customer
FROM(
		SELECT user_id,
		COUNT(order_id) AS order_count
		FROM orders
		GROUP BY user_id
) AS customer_orders



-- 4. BASKET SIZE ANALYSIS

-- Number of products in each order 
SELECT order_id,
COUNT(product_id) as basket_size
FROM order_products
GROUP BY order_id
LIMIT 10

-- Average number of items per order
SELECT 
AVG(basket_size) AS avg_Basket_size
FROM (
	SELECT order_id,
	Count(product_id) AS basket_size
	FROM order_products
	GROUP BY order_id
) AS Order_sizes

-- Largest basket size
SELECT 
MAX(basket_size) AS larg_Basket_size
FROM (
	SELECT order_id,
	Count(product_id) AS basket_size
	FROM order_products
	GROUP BY order_id
) AS Order_sizes

-- ORDERS WITH LARGEST BASKETS
SELECT order_id,
COUNT(product_id) AS basket_size
FROM order_products
GROUP BY order_id
Order by basket_size DESC
LIMIT 10


-- 5. PRODUCT ANALYSIS

-- Top 10 most ordered products
SELECT p.product_name, COUNT(*) AS times_ordered
FROM products p
JOIN Order_products o
	ON p.product_id=o.product_id
GROUP BY o.product_id, p.product_name
ORDER BY times_ordered DESC
LIMIT 10


-- Products with the highest reorder rate
SELECT P.product_name,
CAST(sum(O.reordered) AS DECIMAL)/count(*) AS reordered_Rate
FROM order_products O
JOIN products p
	on O.product_id=P.product_id
GROUP BY o.product_id,P.product_name
HAVING COUNT(*)>100
ORDER BY reordered_rate DESC
LIMIT 10


-- 7. CUSTOMER LOYALTY ANALYSIS

-- Customers with the most orders
SELECT user_id, count(order_id) AS total_orders
FROM orders  
GROUP BY user_id
ORDER BY total_orders DESC


-- 8. MARKET BASKET ANALYSIS

-- Top 10 product pairs frequently purchased together
SELECT p1.product_name,
	   p2.product_name,
       count(*) AS times_bought_togethor
FROM order_products A
JOIN order_products B
	on A.order_id=B.order_id
    AND A.product_id<B.product_id
JOIN products p1
	on A.product_id=p1.product_id
JOIN products p2
	on B.product_id=p2.product_id
GROUP BY p1.product_id,p2.product_id
ORDER BY  times_bought_togethor DESC
LIMIT 10
    
-- TOP 5 Products most frequently added first to cart
SELECT p.product_name,
       count(*) as Most_common
FROM order_products o
JOIN products p
	ON o.product_id=p.product_id
WHERE o.add_to_cart_order=1
GROUP BY p.product_name
ORDER BY Most_common DESC
LIMIT 5

-- 10. CUSTOMER SEGMENTATION

-- Segment customers based on order frequency
WITH CustomerSpending AS (
	SELECT user_id,
		COUNT(order_id) as total_orders,
        CASE 
        WHEN COUNT(order_id)>=80 THEN 'HIGH SPENDER'
        WHEN COUNT(order_id)>=30 THEN 'MODERATE SPENDER'
        ELSE 'LOW SPENDER'
	END AS spending_category
	FROM orders
    GROUP BY user_id
)

SELECT spending_category,
		count(user_id) user_count,
        ROUND(COUNT(user_id)* 100/SUM(COUNT(user_id)) over(),2) as percentage
FROM CustomerSpending
GROUP BY spending_category

 -- How many orders have been placed by each customer segment?
WITH Customer_Order_Counts AS(
		SELECT user_id,
		COUNT(DISTINCT order_id) as total_order
		FROM orders
		GROUP BY user_id
)

SELECT
		CASE
			WHEN total_order>20 THEN 'HIGHLY ACTIVE'
            WHEN total_order>10 THEN 'MODERATE ACTIVE'
            WHEN total_order>5  THEN 'LOW ACTIVE'
            ELSE 'INCTIVE'
            END AS order_segment,
		COUNT(user_id) as customer_count
FROM Customer_Order_Counts
GROUP BY order_segment


-- 12. TIME-BASED ORDER ANALYSIS

-- Distribution of orders across days of the week
SELECT CASE
			WHEN order_dow=0 THEN 'SUNDAY'
            WHEN order_dow=1 THEN 'MONDAY'
            WHEN order_dow=2 THEN 'TUESDAY'
            WHEN order_dow=3 THEN 'WEDNESDAY'
            WHEN order_dow=4 THEN 'THURSDAY'
            WHEN order_dow=5 THEN 'FRIDAY'
            WHEN order_dow=6 THEN 'SATURDAY'
		END AS day_of_week,
       COUNT(order_id) as total_orders,
       ROUND(COUNT(order_id)*100/SUM(COUNT(order_id)) over(),2) as percentage
FROM orders
GROUP BY order_dow



-- Customer Churn Prediction

-- customers who haven’t placed an order in the last 30 days?

WITH last_order AS (
    SELECT 
        user_id,
        MAX(order_number) AS last_order_number
    FROM orders
    GROUP BY user_id
)

SELECT 
    o.user_id,
    o.days_since_prior_order
FROM orders o
JOIN last_order l
    ON o.user_id = l.user_id
    AND o.order_number = l.last_order_number
WHERE o.days_since_prior_order > 30;
