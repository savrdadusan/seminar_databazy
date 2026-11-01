WITH monthly_sales_summary AS (
    SELECT 
        DATE_TRUNC('month', order_date)::DATE AS month,
        SUM(sales) AS monthly_sales
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
),
sales_with_lag AS (
    SELECT 
        month,
        monthly_sales,
        LAG(monthly_sales) OVER (ORDER BY month ASC) AS prev_month_sales
    FROM monthly_sales_summary
)
SELECT 
    month,
    monthly_sales,
    prev_month_sales,
    (monthly_sales - prev_month_sales) AS sales_change,
    ROUND(
        ((monthly_sales - prev_month_sales) / prev_month_sales) * 100.0, 
        2
    ) AS growth_percentage
FROM sales_with_lag
ORDER BY month ASC;
