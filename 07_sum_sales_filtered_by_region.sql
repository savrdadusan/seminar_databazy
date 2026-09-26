SELECT 
    c.region AS region_zakaznika,
    SUM(o.sales) AS celkova_hodnota_predaja_v_danom_ragione
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.region;