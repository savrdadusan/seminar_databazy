SELECT 
    o.order_id AS indentifikator_objednavky,
    customer_name AS meno_zakaznika,
    sales AS hodnota_predaja
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE sales > 500
ORDER BY sales DESC;