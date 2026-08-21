-- ##########################
--     03 Sales analysis
-- ##########################


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 1. Total revenue
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~

-- First, we check the total gross revenue
-- and total final revenue (including shipping).
SELECT SUM(gross_amount) AS gross_revenue,
SUM(final_amount) AS final_revenue
FROM orders;
-- Gross_revenue = $1,175,350.00
-- Final_revenue = $1,122,034.65
-- Note: final_amount contains shipping_fee.
-- I am assuming we do not collect any money
-- from this fee.

-- Commonly, the orders would not contain the
-- gross revenue, instead this would need to be
-- calculated via order_items and products.
-- For practice, let's do it that way.
-- (Having gross revenue means we can check
-- our answer).
-- Note: since discount_pct is INT, it is
-- simpler to use a CTE to cast as NUMERIC first.

WITH discount_numeric AS (
SELECT i.quantity,
p.mrp,
CAST(i.discount_pct AS NUMERIC)
FROM order_items AS i
INNER JOIN products AS p
	ON i.product_id = p.product_id
)
SELECT ROUND(SUM(quantity * mrp ), 2),
ROUND(SUM(quantity * mrp * ( 1 - discount_pct/100) ), 2)
FROM discount_numeric;
-- Total price before discount = $1,300,021.00
-- Total price after discount = $1,175,350.00
-- Exactly matching that found above.

-- To obtain the correct final amount we need to:
-- Include shipping fees.
-- Remove Cancelled items.

WITH collated_orders AS (
SELECT i.quantity,
p.mrp,
CAST(i.discount_pct AS NUMERIC),
o.order_status,
i.order_id
FROM order_items AS i
INNER JOIN products AS p
	ON i.product_id = p.product_id
INNER JOIN orders AS o
	ON i.order_id = o.order_id
WHERE order_status != 'Cancelled'
), 
grouped_orders AS (
SELECT order_id AS order_id,
SUM(quantity * mrp * ( 1 - discount_pct/100)) AS gross_total
FROM collated_orders
GROUP BY order_id
)
SELECT ROUND(SUM(gross_total + shipping_fee),2) FROM grouped_orders
JOIN orders
	ON grouped_orders.order_id = orders.order_id;
-- Final revenue 1,122,034.65
-- Correct!
-- This was worthwhile as it helped me understand the following:
-- (1) Cancelled orders are refunded.
-- (2) Final total includes the shipping fee.


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 2. Revenue by month
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~


SELECT EXTRACT(MONTH FROM order_date) AS order_month,
SUM(final_amount) AS monthly_revenue
FROM orders
GROUP BY order_month 
ORDER BY order_month ASC;


SELECT EXTRACT(MONTH FROM order_date) AS order_month,
SUM(final_amount) AS monthly_revenue
FROM orders
GROUP BY order_month 
ORDER BY monthly_revenue ASC;

SELECT EXTRACT(YEAR FROM order_date) AS order_year,
EXTRACT(MONTH FROM order_date) AS order_month,
SUM(final_amount) AS monthly_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month ASC;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 3. Num. orders by month
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~

SELECT EXTRACT(MONTH FROM order_date) AS order_month,
COUNT(final_amount) AS num_orders_by_month
FROM orders
GROUP BY order_month 
ORDER BY order_month ASC;

SELECT EXTRACT(YEAR FROM order_date) AS order_year,
EXTRACT(MONTH FROM order_date) AS order_month,
COUNT(final_amount) AS monthly_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month ASC;


 
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 4. Average order value
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 5. Month-over-month growth
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 6. Cumulative revenue
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
-- 7. Rolling 3-month revenue
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~


