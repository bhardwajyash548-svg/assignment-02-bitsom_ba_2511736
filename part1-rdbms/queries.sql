 -- NOTE:
-- The dataset does not include product, city, or sales representative details.
-- Therefore, queries are adapted based on available columns only.

-- Q1: List all customers along with their total order value
SELECT customer_id, SUM(total_amount) AS total_value
FROM orders
GROUP BY customer_id;

-- Q2: Find the top 3 customers by number of orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 3;

-- Q3: Count of unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;

-- Q4: Orders where total value exceeds 10000
SELECT *
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5: Orders with more than 3 items
SELECT *
FROM orders
WHERE num_items > 3;

