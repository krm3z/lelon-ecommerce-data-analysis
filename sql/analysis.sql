SELECT SUM(quantity * sold_price) AS total_revenue
FROM order_items;   

SELECT COUNT(*) AS total_orders
FROM orders;