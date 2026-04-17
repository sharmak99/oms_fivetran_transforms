{{ config(materialized='table') }}

SELECT
    city,
    salary_band,
    SUM(total_records) AS total_people,
    ROUND(AVG(avg_salary), 2) AS avg_salary,
    max(last_updated_at) as last_updated_at
FROM
    {{ ref('orders_fact') }}
GROUP BY
    city,
    salary_band
