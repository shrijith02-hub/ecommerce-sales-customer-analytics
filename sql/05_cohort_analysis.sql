CREATE OR REPLACE VIEW public.vw_customer_cohort AS
WITH customer_first_purchase AS (
    SELECT
        c.customer_unique_id,
        DATE_TRUNC('month', MIN(o.order_purchase_timestamp))::date
            AS cohort_month
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    WHERE o.order_status NOT IN ('canceled', 'unavailable')
    GROUP BY c.customer_unique_id
),
customer_activity AS (
    SELECT DISTINCT
        c.customer_unique_id,
        DATE_TRUNC('month', o.order_purchase_timestamp)::date
            AS activity_month
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    WHERE o.order_status NOT IN ('canceled', 'unavailable')
)
SELECT
    f.cohort_month,
    a.activity_month,
    (
        EXTRACT(YEAR FROM a.activity_month) -
        EXTRACT(YEAR FROM f.cohort_month)
    ) * 12
    +
    (
        EXTRACT(MONTH FROM a.activity_month) -
        EXTRACT(MONTH FROM f.cohort_month)
    ) AS cohort_index,
    COUNT(DISTINCT a.customer_unique_id) AS active_customers
FROM customer_first_purchase f
JOIN customer_activity a
    ON f.customer_unique_id = a.customer_unique_id
WHERE a.activity_month >= f.cohort_month
GROUP BY f.cohort_month, a.activity_month;
