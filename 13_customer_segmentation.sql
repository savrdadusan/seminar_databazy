SELECT
    customers.customer_name AS meno_zakaznika,
    SUM(orders.sales) AS celkovy_predaj,
    AVG(orders.discount) AS priemerna_zlava,
    COUNT(DISTINCT orders.order_id) AS pocet_objednavok,
    CASE
        WHEN SUM(orders.sales) > 2500 THEN 'VIP'
        ELSE 'REGULAR'
        END
    AS typ_zakaznika
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
GROUP BY customers.customer_id, customers.customer_name
ORDER BY celkovy_predaj DESC;