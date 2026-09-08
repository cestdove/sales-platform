DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers; 


CREATE TABLE customers (
    customer_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(255) UNIQUE NOT NULL,
    city VARCHAR(100),
    region VARCHAR(100),
    registration_date DATE NOT NULL
);


CREATE TABLE products (
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL, 
    price numeric(10,2) NOT NULL CHECK (price >= 0), 
    stock INTEGER NOT NULL CHECK (stock >= 0),
    created_at DATE NOT NULL
);


CREATE TABLE orders (
    order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    customer_id INTEGER NOT NULL
        REFERENCES customers(customer_id),

    order_date DATE NOT NULL
);


CREATE TABLE order_items (
    order_item_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    order_id INTEGER NOT NULL
        REFERENCES orders(order_id),

    product_id INTEGER NOT NULL
        REFERENCES products(product_id),

    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(10,2) NOT NULL CHECK (unit_price >= 0),

    UNIQUE (order_id, product_id)
);