-- customers from california 
SELECT * 
FROM customers 
WHERE region = 'California';

-- products that cost more than 500 
SELECT * 
FROM products
WHERE price > 500;

-- products currently in stock 
SELECT * 
FROM products 
WHERE stock > 0;

-- orders placed after march 1st 2026 
SELECT *
FROM orders
WHERE order_date > '2026-03-01';

-- products in the electronics category 
SELECT *
FROM products 
WHERE category = 'Electronics';

-- products between 100 and 500 dollars 
SELECT * 
FROM products
WHERE price BETWEEN 100 AND 500;

-- customers whose surname starts with M
SELECT * FROM customers 
WHERE last_name LIKE 'M%';

-- customers with unknown city 
SELECT * FROM customers 
WHERE city IS NULL;
--- WHERE city = 'Unknown'; --- 

