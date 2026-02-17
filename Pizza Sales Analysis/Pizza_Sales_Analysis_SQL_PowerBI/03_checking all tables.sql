-- checking all tables
select *
from order_details;

select *
from orders;

select *
from pizzas;

select *
from pizza_types;

-- data verification
-- Orders, Order_details, Pizzas, Pizza types
SELECT 'Orders' AS table_name, COUNT(*) AS total_rows FROM orders
UNION ALL
SELECT 'Order Details', COUNT(*) FROM order_details
UNION ALL
SELECT 'Pizzas', COUNT(*) FROM pizzas
UNION ALL
SELECT 'Pizza Types', COUNT(*) FROM pizza_types;


-- Total Orders, Total pizzas sold, Total Revenue, Avg Order Value
SELECT 
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(od.quantity) AS total_pizzas_sold,
    TO_CHAR(SUM(od.quantity * p.price), 'FM9,999,999.00') AS total_revenue,
    CAST(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id) AS DECIMAL(10,2)) AS avg_order_value
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN orders o ON od.order_id = o.order_id;


