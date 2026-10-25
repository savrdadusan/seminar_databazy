SELECT t1.*
FROM flourmills_sales t1
WHERE EXISTS (
    SELECT 1
    FROM flourmills_sales t2
    WHERE t2.product_category = t1.product_category
    HAVING COUNT(DISTINCT EXTRACT(MONTH FROM t2.sale_date)) >1
)