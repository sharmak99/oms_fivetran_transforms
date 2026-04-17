{{ config(materialized='table') }}    

SELECT
    city,
    salary_band,
    COUNT(*) AS total_records,
    AVG(salary) AS avg_salary,
    max(dbt_updated_at) as last_updated_at
FROM
    {{ ref('orders_stg') }}
GROUP BY city, salary_band
