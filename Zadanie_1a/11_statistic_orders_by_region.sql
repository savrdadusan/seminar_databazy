SELECT
    customers.region AS region,
    SUM(orders.sales) AS celkova_hodnota_predaja,
    AVG(orders.discount) AS priemerna_hodnota_poskytnutej_zlavy,
    COUNT(orders.order_id) AS pocet_objednavok
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
GROUP BY customers.region;
