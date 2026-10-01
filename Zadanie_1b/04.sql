SELECT 
    product_name AS nazov_produktu,
    total_amount AS hodnotu_konkretnej_transakcie,
    (SELECT AVG(total_amount) FROM flourmills_sales) as avg_amount
FROM flourmills_sales