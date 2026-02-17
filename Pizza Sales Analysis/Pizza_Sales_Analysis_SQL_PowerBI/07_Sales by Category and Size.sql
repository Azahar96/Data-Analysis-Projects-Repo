/*
  CHART 3: % of Sales by Pizza Category
*/
SELECT 
    pt.category,
    SUM(od.quantity * p.price) AS total_revenue,
    ROUND(SUM(od.quantity * p.price) * 100 / (SELECT SUM(od.quantity * p.price) FROM order_details od JOIN pizzas p ON od.pizza_id = p.pizza_id), 2) AS pct_sales
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY total_revenue DESC;


/*
  CHART 4: % of Sales by Pizza Size
*/
SELECT 
    p.size,
    SUM(od.quantity * p.price) AS total_revenue,
    ROUND(SUM(od.quantity * p.price) * 100 / (SELECT SUM(od.quantity * p.price) FROM order_details od JOIN pizzas p ON od.pizza_id = p.pizza_id), 2) AS pct_sales
FROM pizzas p
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY p.size
ORDER BY total_revenue DESC;