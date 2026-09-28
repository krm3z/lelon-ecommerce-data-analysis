SELECT SUM(quantity * sold_price) AS total_revenue
FROM order_items;   

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(quantity) AS total_items_sold
FROM order_items;

SELECT
    products.product_name,
    SUM(order_items.quantity * order_items.sold_price) AS revenue
FROM order_items
JOIN product_variants
ON order_items.variant_id = product_variants.variant_id
JOIN products
ON product_variants.product_id = products.product_id
GROUP BY products.product_name
ORDER BY revenue DESC;

SELECT
    products.product_name,
    SUM(order_items.quantity) AS units_sold
FROM order_items
JOIN product_variants
ON order_items.variant_id = product_variants.variant_id
JOIN products
ON product_variants.product_id = products.product_id
GROUP BY products.product_name
ORDER BY units_sold DESC;