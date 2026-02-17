/*
  TOP 5 PIZZAS BY REVENUE
*/
SELECT 
    pt.name, 
    SUM(od.quantity * p.price) AS total_revenue
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.name
ORDER BY total_revenue DESC
LIMIT 5;


/*
  TOP 5 PIZZAS BY QUANTITY
*/
SELECT 
    pt.name, 
    SUM(od.quantity) AS total_quantity
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.name
ORDER BY total_quantity DESC
LIMIT 5;


/*
  TOP 5 PIZZAS BY TOTAL ORDERS
  (Note: Using DISTINCT count of order_id from order_details to handle ties correctly)
*/
SELECT 
    pt.name, 
    COUNT(DISTINCT od.order_id) AS total_orders
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.name
ORDER BY total_orders DESC
LIMIT 5;