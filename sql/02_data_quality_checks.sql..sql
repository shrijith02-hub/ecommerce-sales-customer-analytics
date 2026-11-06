-- Check duplicate order IDs
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_order_ids,
    COUNT(*) - COUNT(DISTINCT order_id) AS duplicate_rows
FROM orders;

-- Check missing customer IDs
SELECT
    COUNT(*) AS total_rows,
    COUNT(customer_id) AS non_null_customer_ids,
    COUNT(*) - COUNT(customer_id) AS missing_customer_ids
FROM orders;

-- Check order status distribution
SELECT
    order_status,
    COUNT(*) AS order_count
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Check missing product prices
SELECT
    COUNT(*) AS total_items,
    COUNT(price) AS non_null_prices,
    COUNT(*) - COUNT(price) AS missing_prices
FROM order_items;