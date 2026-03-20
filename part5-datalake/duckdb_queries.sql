-- Q1: List all customers along with total number of orders

SELECT 
    o.customer_id,
    COUNT(*) AS total_orders
FROM read_json_auto('datasets/orders.json') o
GROUP BY o.customer_id;


-- Q2: Top 3 customers by total order value

SELECT 
    o.customer_id,
    SUM(o.total_amount) AS total_value
FROM read_json_auto('datasets/orders.json') o
GROUP BY o.customer_id
ORDER BY total_value DESC
LIMIT 3;


-- Q3: List all products purchased by customers

-- NOTE:
-- customers.csv does not contain city information
-- So we list all customers with their orders instead

SELECT 
    c.customer_id,
    o.order_id
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id;


-- Q4: Join all three files

-- NOTE:
-- products.parquet does not have direct relation with orders.json
-- So we simulate join using num_items (for assignment purpose)

SELECT 
    c.customer_id,
    o.order_date,
    p.*
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p
ON o.num_items = p.product_id;
