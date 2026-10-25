SELECT *
FROM (
    SELECT SUM(total_amount) AS monthly_sales, 
    EXTRACT (MONTH FROM sale_date) as month
    FROM flourmills_sales
    GROUP BY month
) AS monthly_sales


ORDER BY monthly_sales DESC;