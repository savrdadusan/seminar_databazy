SELECT
    customers.region AS nazov_regionu,
SUM(
    CASE 
        WHEN orders.sales > 1000 THEN 1
        ELSE 0
    END
) AS high_value,
SUM(
    CASE
        WHEN orders.sales <= 1000 THEN 1
        ELSE 0
    END
) AS low_value
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
GROUP BY customers.region;