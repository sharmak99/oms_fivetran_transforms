SELECT
    id,
    name,    
    age,
    city,
    salary
FROM
    {{ source('landing', 'sample_1000_records') }}
    
