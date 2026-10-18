WITH order_activity AS (
    SELECT DISTINCT
        o.customer_id,
        c.customer_name,
        MAX(o.order_date::DATE) OVER (
            PARTITION BY o.customer_id
        ) AS last_order_date,
        MAX(o.order_date::DATE) OVER () AS latest_order_date
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
)
SELECT 
    customer_id,
    customer_name,
    last_order_date
FROM order_activity
WHERE last_order_date < latest_order_date - INTERVAL '90 days'
ORDER BY last_order_date ASC;
