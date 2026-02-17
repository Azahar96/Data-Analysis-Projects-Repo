/*
  KPI REQUIREMENTS:
  1. Total Revenue
  2. Total Orders
  3. Total Pizzas Sold
  4. Average Order Value
  5. Average Pizzas Per Order
*/

SELECT 
    SUM(od.quantity * p.price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(od.quantity) AS total_pizzas_sold,
    SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id) AS avg_order_value,
    CAST(SUM(od.quantity) AS DECIMAL(10,2)) / COUNT(DISTINCT o.order_id) AS avg_pizzas_per_order
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN orders o ON od.order_id = o.order_id;