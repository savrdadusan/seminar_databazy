CREATE SCHEMA IF NOT EXISTS silver;

CREATE VIEW silver.stg_age_group AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_genres AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_genres_movie AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_movies AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_occupations AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_ratings AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;

CREATE VIEW silver.stg_users AS
    SELECT TRIM(id)::INT AS user_id,
    TRIM(age)::INT AS age,
    UPPER(TRIM(gender)) AS gender,
    TRIM(occupation_id)::INT AS occupation_id,
    TRIM(zip_code) AS zip_code
    FROM bronze.users;