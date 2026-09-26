/* Vytvorenie databázy superstore*/
/* CREATE DATABASE superstore; */
/* Vytvorenie tabuľky customers */
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR (50),
    region VARCHAR (50)

);
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR (100)

);
CREATE TABLE orders (
    order_id    VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    product_id  VARCHAR(20),
    order_date  DATE,
    ship_date   DATE,
    sales       NUMERIC(12,2),
    quantity    INTEGER,
    discount    NUMERIC(12,2),
    profit      NUMERIC(12,2),

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_orders_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
)