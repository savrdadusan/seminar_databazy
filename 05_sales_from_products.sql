SELECT
    products.product_name AS nazov_produktu,
    SUM(orders.sales) AS celkova_hodnota_predaja
FROM products products
LEFT JOIN orders orders
    ON products.product_id = orders.product_id
GROUP BY products.product_name;