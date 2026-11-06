SELECT
    SUM(total_orders) AS total_orders,
    ROUND(SUM(product_sales), 2) AS total_product_sales,
    ROUND(
        SUM(product_sales) / NULLIF(SUM(total_orders), 0),
        2
    ) AS average_order_value
FROM public.vw_monthly_sales;