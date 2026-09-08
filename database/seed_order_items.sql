INSERT INTO order_items (
    order_id,
    product_id,
    quantity,
    unit_price
)
VALUES
-- Order 1 (John)
(1, 1, 1, 1299.99),
(1, 5, 1, 99.99),
(1, 7, 1, 119.99),

-- Order 2 (Emma)
(2, 9, 2, 599.99),

-- Order 3 (John)
(3, 12, 2, 279.99),
(3, 16, 1, 499.99),

-- Order 4 (Sophia)
(4, 18, 1, 549.99),
(4, 20, 1, 179.99),

-- Order 5 (Olivia)
(5, 3, 1, 1799.99),

-- Order 6 (Michael)
(6, 11, 1, 399.99),
(6, 5, 2, 99.99),

-- Order 7 (Charlotte)
(7, 14, 1, 699.99),
(7, 5, 1, 99.99),
(7, 7, 1, 119.99),

-- Order 8 (Amelia)
(8, 10, 1, 449.99),

-- Order 9 (William)
(9, 19, 1, 549.99),
(9, 11, 1, 399.99),

-- Order 10 (John)
(10, 2, 1, 1499.99),
(10, 9, 1, 599.99),
(10, 12, 1, 279.99);