SELECT 
    customers.region AS region,
    SUM(orders.sales) AS celkova_hodnota_predaja
FROM customers customers
LEFT JOIN orders orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.region;