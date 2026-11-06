CREATE OR REPLACE VIEW public.vw_delivery_performance AS
WITH order_review AS (
    SELECT
        order_id,
        MAX(review_score) AS review_score
    FROM order_reviews
    GROUP BY order_id
)
SELECT
    o.order_id,
    o.order_status,
    o.order_purchase_timestamp,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    CASE
        WHEN o.order_delivered_customer_date IS NULL THEN NULL
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
            THEN 'Late'
        ELSE 'On Time'
    END AS delivery_status,
    CASE
        WHEN o.order_delivered_customer_date IS NULL THEN NULL
        ELSE ROUND(
            EXTRACT(
                EPOCH FROM (
                    o.order_delivered_customer_date -
                    o.order_estimated_delivery_date
                )
            ) / 86400.0,
            2
        )
    END AS delivery_variance_days,
    r.review_score
FROM orders o
LEFT JOIN order_review r
    ON o.order_id = r.order_id;
