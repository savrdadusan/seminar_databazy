SELECT 
    orders.order_id AS identifikator_objednavky,
    customers.customer_name AS meno_zakaznika,
    products.category AS kategoria_predaja,
    orders.sales AS hodnota_predaja
FROM orders 
JOIN customers  
    ON orders.customer_id = customers.customer_id
JOIN products products
    ON orders.product_id = products.product_id;
