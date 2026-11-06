CREATE OR REPLACE VIEW public.vw_customer_rfm AS
WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        o.order_id,
        o.order_purchase_timestamp,
        SUM(oi.price) AS order_value
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY
        c.customer_unique_id,
        o.order_id,
        o.order_purchase_timestamp
),
analysis_date AS (
    SELECT MAX(order_purchase_timestamp)::date AS max_purchase_date
    FROM orders
),
customer_rfm AS (
    SELECT
        co.customer_unique_id,
        (a.max_purchase_date - MAX(co.order_purchase_timestamp)::date) AS recency,
        COUNT(DISTINCT co.order_id) AS frequency,
        SUM(co.order_value) AS monetary
    FROM customer_orders co
    CROSS JOIN analysis_date a
    GROUP BY co.customer_unique_id, a.max_purchase_date
),
rfm_scores AS (
    SELECT
        *,
        NTILE(5) OVER (ORDER BY recency DESC) AS recency_score,
        CASE
            WHEN frequency = 1 THEN 1
            WHEN frequency = 2 THEN 3
            ELSE 5
        END AS frequency_score,
        NTILE(5) OVER (ORDER BY monetary) AS monetary_score
    FROM customer_rfm
)
SELECT
    customer_unique_id,
    recency,
    frequency,
    ROUND(monetary::numeric, 2) AS monetary,
    recency_score,
    frequency_score,
    monetary_score,
    CASE
        WHEN recency_score >= 4 AND frequency_score >= 5 AND monetary_score >= 4
            THEN 'High Value Loyal'
        WHEN recency_score <= 2 AND monetary_score >= 4
            THEN 'High Value Lapsed'
        WHEN frequency_score >= 3
            THEN 'Repeat Customers'
        WHEN recency_score >= 4 AND frequency_score = 1
            THEN 'Recent One-Time'
        ELSE 'One-Time / Inactive'
    END AS rfm_segment
FROM rfm_scores;
