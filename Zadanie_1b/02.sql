SELECT
    product_name AS nazov_produktu
    total_amount AS hodnota_transakcie

FROM flourmills_sales
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM flourmills_sales
)