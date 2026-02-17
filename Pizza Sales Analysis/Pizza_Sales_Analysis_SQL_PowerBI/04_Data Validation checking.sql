
-- Most selling pizza in which day
SELECT 
    TO_CHAR(date, 'Day') AS order_day, -- বারের নাম বের করা (যেমন: Monday)
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY TO_CHAR(date, 'Day')
ORDER BY total_orders DESC; -- বেশি থেকে কম সাজানো



SELECT 
    EXTRACT(HOUR FROM time) AS order_hour, -- সময়ের ঘণ্টা বের করা (যেমন: 12 PM, 1 PM)
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY EXTRACT(HOUR FROM time)
ORDER BY order_hour; -- সকাল থেকে রাত পর্যন্ত সাজানো

-- কোন ক্যাটাগরির পিৎজা সবচেয়ে বেশি বিক্রি হয়?
SELECT 
    pt.category, 
    SUM(od.quantity) AS total_pizzas_sold,
    SUM(od.quantity * p.price) AS total_revenue
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY total_revenue DESC;