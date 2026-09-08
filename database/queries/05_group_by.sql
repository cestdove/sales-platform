-- number of products by category 
SELECT category,
     COUNT(*) AS total_products 
FROM products
GROUP BY category;

-- average product price by category 
SELECT category, 
    ROUND(AVG(price), 2) AS average_price 
FROM products 
GROUP BY category;

-- number of products by manufacturer
SELECT manufacturer, 
    COUNT(*) AS total_products 
FROM products 
GROUP BY manufacturer;

-- total stock by category 
SELECT category,
    SUM(stock) AS total_stock 
FROM products
GROUP BY category;

-- cheapest product in each category 
SELECT category,
    MIN(price) AS lowest_price
FROM products
GROUP BY category;

-- number of customers by region 
SELECT region,
    COUNT(*) AS total_customers
FROM customers
GROUP BY region;

-- number of orders by customer
SELECT customer_id,
    COUNT(*) AS total_orders 
FROM orders
GROUP BY customer_id;


