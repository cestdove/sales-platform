-- products ordered by price 
SELECT * FROM products
ORDER BY price;

-- products ordered by descending price
SELECT * FROM products
ORDER BY price DESC;

-- five most expensive products 
SELECT * FROM products
ORDER BY PRICE DESC
LIMIT 5;

-- ten newest customers 
SELECT * FROM customers
ORDER BY registration_date DESC 
LIMIT 10;

-- categories without duplicates 
SELECT DISTINCT category FROM products;