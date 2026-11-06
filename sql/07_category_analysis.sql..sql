SELECT
    category,
    SUM(total_orders) AS category_order_count,
    SUM(total_items) AS total_items,
    ROUND(SUM(product_sales), 2) AS product_sales,
    ROUND(AVG(avg_item_price), 2) AS average_item_price
FROM public.vw_category_performance
GROUP BY category
ORDER BY product_sales DESC;