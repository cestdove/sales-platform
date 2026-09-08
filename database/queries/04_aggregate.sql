-- number of customers 
SELECT COUNT(*)
FROM customers;

-- average product price 
SELECT AVG(price)
FROM products;

-- highest product price
SELECT MAX(price)
FROM products;

-- lowest product price
SELECT MIN(price)
FROM products;

-- total stock available 
SELECT SUM(stock)
FROM products;