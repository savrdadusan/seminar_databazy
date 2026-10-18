SELECT 
    customers.customer_name AS meno_zakaznika,
    orders.order_id AS identifikator_objednavky,
    orders.sales AS hodnota_predaja
FROM orders 
FULL JOIN customers
    ON orders.customer_id = customers.customer_id