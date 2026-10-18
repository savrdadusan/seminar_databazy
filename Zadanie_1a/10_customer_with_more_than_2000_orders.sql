SELECT
    customers.customer_name AS meno_zakaznika,
    SUM(orders.sales) AS celkova_hodnota_nakupov
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name
HAVING SUM(orders.sales) > 2000;