-- Úloha 4 – Podiel zákazníckych typov na celkovom predaji pomocou dvoch CTE
WITH customer_revenue AS (
    SELECT 
        customer_type,
        SUM(total_amount) AS revenue
    FROM 
        flourmills_sales
    GROUP BY 
        customer_type
),
revenue_analysis AS (
    SELECT 
        customer_type,
        revenue,
        SUM(revenue) OVER () AS total_revenue,
        ROUND((revenue / SUM(revenue) OVER ()) * 100, 2) AS revenue_percentage
    FROM 
        customer_revenue
)
SELECT 
    customer_type,
    revenue,
    total_revenue,
    revenue_percentage
FROM 
    revenue_analysis
ORDER BY 
    revenue DESC;
