WITH RECURSIVE date_bounds AS (
    SELECT 
        MIN(sale_date) AS min_date,
        MAX(sale_date) AS max_date
    FROM 
        flourmills_sales
),
calendar AS (
    SELECT 
        min_date AS calendar_date,
        max_date
    FROM 
        date_bounds
    
    UNION ALL
    
    SELECT 
        (calendar_date + INTERVAL '1 day')::DATE,
        max_date
    FROM 
        calendar
    WHERE 
        calendar_date < max_date
)
SELECT 
    calendar_date
FROM 
    calendar
ORDER BY 
    calendar_date ASC;
