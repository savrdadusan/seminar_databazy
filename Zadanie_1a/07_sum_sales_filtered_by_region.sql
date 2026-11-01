SELECT 
    customers.region AS region_zakaznika,
    SUM(orders.sales) AS celkova_hodnota_predaja_v_danom_ragione
FROM customers
JOIN orders 
    ON customers.customer_id = orders.customer_id
GROUP BY customers.region;