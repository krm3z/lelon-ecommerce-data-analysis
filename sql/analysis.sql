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

SELECT
    ROUND(
        SUM(quantity * sold_price) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM order_items;

SELECT
    products.product_name,
    SUM(order_items.quantity * order_items.sold_price) AS revenue,
    SUM(order_items.quantity * product_variants.purchase_price) AS product_cost,
    SUM(
        order_items.quantity *
        (order_items.sold_price - product_variants.purchase_price)
    ) AS gross_profit
FROM order_items
JOIN product_variants
ON order_items.variant_id = product_variants.variant_id
JOIN products
ON product_variants.product_id = products.product_id
GROUP BY products.product_name
ORDER BY gross_profit DESC;

SELECT
    products.product_name,
    SUM(product_variants.stock) AS total_stock
FROM products
JOIN product_variants
ON products.product_id = product_variants.product_id
GROUP BY products.product_name
ORDER BY total_stock DESC;

SELECT
    COALESCE(marketing_campaigns.campaign_name, 'Organic / Direct') AS campaign,
    COUNT(orders.order_id) AS total_orders
FROM orders
LEFT JOIN marketing_campaigns
ON orders.campaign_id = marketing_campaigns.campaign_id
GROUP BY marketing_campaigns.campaign_name
ORDER BY total_orders DESC;

SELECT
    COALESCE(marketing_campaigns.campaign_name, 'Organic / Direct') AS campaign,
    SUM(order_items.quantity * order_items.sold_price) AS revenue
FROM orders
JOIN order_items
ON orders.order_id = order_items.order_id
LEFT JOIN marketing_campaigns
ON orders.campaign_id = marketing_campaigns.campaign_id
GROUP BY marketing_campaigns.campaign_name
ORDER BY revenue DESC;

SELECT
    campaign_name,
    platform,
    impressions,
    clicks,
    ROUND(
        clicks * 100.0 / NULLIF(impressions, 0),
        2
    ) AS ctr_percentage
FROM marketing_campaigns
ORDER BY ctr_percentage DESC;

SELECT
    campaign_name,
    platform,
    amount_spent,
    clicks,
    ROUND(
        amount_spent / NULLIF(clicks, 0),
        2
    ) AS cost_per_click
FROM marketing_campaigns
ORDER BY cost_per_click ASC;

SELECT
    marketing_campaigns.campaign_name,
    marketing_campaigns.platform,
    marketing_campaigns.amount_spent,
    SUM(order_items.quantity * order_items.sold_price) AS revenue,
    ROUND(
        SUM(order_items.quantity * order_items.sold_price)
        / NULLIF(marketing_campaigns.amount_spent, 0),
        2
    ) AS roas
FROM marketing_campaigns
JOIN orders
ON marketing_campaigns.campaign_id = orders.campaign_id
JOIN order_items
ON orders.order_id = order_items.order_id
GROUP BY
    marketing_campaigns.campaign_id,
    marketing_campaigns.campaign_name,
    marketing_campaigns.platform,
    marketing_campaigns.amount_spent
ORDER BY roas DESC;

SELECT
    marketing_campaigns.campaign_name,
    SUM(website_traffic.visitors) AS visitors,
    SUM(website_traffic.sessions) AS sessions,
    SUM(website_traffic.page_views) AS page_views
FROM website_traffic
JOIN marketing_campaigns
ON website_traffic.campaign_id = marketing_campaigns.campaign_id
GROUP BY marketing_campaigns.campaign_name
ORDER BY visitors DESC;

SELECT
    marketing_campaigns.campaign_name,
    traffic.total_visitors,
    sales.total_orders,
    ROUND(
        sales.total_orders * 100.0
        / NULLIF(traffic.total_visitors, 0),
        2
    ) AS conversion_rate
FROM marketing_campaigns
JOIN (
    SELECT
        campaign_id,
        SUM(visitors) AS total_visitors
    FROM website_traffic
    WHERE campaign_id IS NOT NULL
    GROUP BY campaign_id
) AS traffic
ON marketing_campaigns.campaign_id = traffic.campaign_id
JOIN (
    SELECT
        campaign_id,
        COUNT(order_id) AS total_orders
    FROM orders
    WHERE campaign_id IS NOT NULL
    GROUP BY campaign_id
) AS sales
ON marketing_campaigns.campaign_id = sales.campaign_id
ORDER BY conversion_rate DESC;

SELECT
    CASE
        WHEN orders.order_date::DATE BETWEEN '2026-10-01' AND '2026-10-07'
        THEN 'Launch Promotion'
        ELSE 'Normal Price'
    END AS sales_period,
    COUNT(DISTINCT orders.order_id) AS total_orders,
    SUM(order_items.quantity) AS units_sold,
    SUM(order_items.quantity * order_items.sold_price) AS revenue
FROM orders
JOIN order_items
ON orders.order_id = order_items.order_id
GROUP BY sales_period
ORDER BY sales_period;

SELECT
    customers.first_name,
    customers.last_name,
    COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY
    customers.id,
    customers.first_name,
    customers.last_name
HAVING COUNT(orders.order_id) > 1
ORDER BY total_orders DESC;

SELECT
    customers.city,
    COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.city
ORDER BY total_orders DESC;