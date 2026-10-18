WITH customer_monthly_sales AS (
    SELECT 
        country,
        SUBSTRING(invoice_date FROM 1 FOR 7) || '-01' AS month,
        customer_id,
        SUM(quantity * unit_price) AS total_amount
    FROM retail_sales
    WHERE customer_id IS NOT NULL
    GROUP BY country, SUBSTRING(invoice_date FROM 1 FOR 7), customer_id
),
ranked_customers AS (
    SELECT 
        country,
        month::DATE AS month,
        customer_id,
        total_amount,
        DENSE_RANK() OVER (
            PARTITION BY country, SUBSTRING(month::TEXT FROM 1 FOR 7)
            ORDER BY total_amount DESC
        ) AS sales_rank
    FROM customer_monthly_sales
)
SELECT 
    country,
    month,
    customer_id,
    total_amount,
    sales_rank
FROM ranked_customers
WHERE sales_rank <= 5
ORDER BY country ASC, month ASC, sales_rank ASC, customer_id ASC;
