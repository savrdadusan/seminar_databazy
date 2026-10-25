SELECT
    customers.customer_name AS meno_zakaznika,
    COUNT(orders.order_id) AS pocet_jeho_objednavok
FROM customers 
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;