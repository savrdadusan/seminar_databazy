SELECT 
    orders.order_id AS indentifikator_objednavky,
    customers.customer_name AS meno_zakaznika,
    sales AS hodnota_predaja
FROM orders 
JOIN customers  
    ON orders.customer_id = customers.customer_id
WHERE sales > 500
ORDER BY sales DESC;