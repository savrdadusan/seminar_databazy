CREATE OR REPLACE PROCEDURE apply_regional_discount(
    p_region_name VARCHAR, 
    p_discount_rate NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE orders
    SET sales = sales * (1 - p_discount_rate)
    WHERE region = p_region_name; 

    RAISE NOTICE 'Aplikovaná zľava % pre región %.', p_discount_rate, p_region_name;
END;
$$;
