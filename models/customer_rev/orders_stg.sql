SELECT
    id,
    name,    
    age,
    city,
    salary
    CASE
        WHEN salary >= 100000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_band,
    current_timestamp as dbt_updated_at
FROM
    {{ source('landing', 'sample_1000_records') }}
