SELECT
    products.category AS kategoria_produktu,
    AVG(orders.discount) AS priemerna_zlava
FROM products
LEFT JOIN orders
    ON products.product_id = orders.product_id
GROUP BY products.category