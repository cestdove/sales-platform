-- orders with customer information 
SELECT 
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id;


-- products included in each order
SELECT
    oi.order_id,
    p.name,
    oi.quantity,
    oi.unit_price
FROM order_items AS oi
INNER JOIN products AS p
    ON oi.product_id = p.product_id;

-- customer purchases
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    p.name,
    oi.quantity,
    oi.unit_price
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id;


-- total price for each purchased product
SELECT
    p.name,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS total_price
FROM order_items AS oi
INNER JOIN products AS p
    ON oi.product_id = p.product_id;


-- products purchased by customers
SELECT
    c.city,
    c.first_name,
    p.name
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id;


-- ordered products
SELECT DISTINCT
    p.name
FROM products AS p
INNER JOIN order_items AS oi
    ON p.product_id = oi.product_id;