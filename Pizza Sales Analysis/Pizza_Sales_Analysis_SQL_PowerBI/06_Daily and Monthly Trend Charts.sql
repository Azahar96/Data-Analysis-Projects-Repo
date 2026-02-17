/*
  CHART 1: Daily Trend for Total Orders
  Insight: Identify the busiest days of the week.
*/
SELECT 
    TO_CHAR(date, 'Day') AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY TO_CHAR(date, 'Day')
ORDER BY total_orders DESC;


/*
  CHART 2: Monthly Trend for Total Orders
  Insight: Identify peak months (Seasonality).
*/
SELECT 
    TO_CHAR(date, 'Month') AS month_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY TO_CHAR(date, 'Month')
ORDER BY total_orders DESC;