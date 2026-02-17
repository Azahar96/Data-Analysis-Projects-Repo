-- 1. Drop existing tables (যাতে একদম ফ্রেশ স্টার্ট করা যায়)
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS pizzas;
DROP TABLE IF EXISTS pizza_types;
DROP TABLE IF EXISTS orders;

-- 2. Create 'orders' table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE NOT NULL,
    time TIME NOT NULL
);

-- 3. Create 'pizza_types' table
CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    ingredients TEXT NOT NULL
);

-- 4. Create 'pizzas' table (NO Foreign Key)
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50), -- Foreign Key removed
    size VARCHAR(5),
    price DECIMAL(5,2)
);

-- 5. Create 'order_details' table (NO Foreign Key)
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,        -- Foreign Key removed
    pizza_id VARCHAR(50), -- Foreign Key removed
    quantity INT
);