select 
        store_sk,
        store_code,
        store_name,
        region,
        country,
        open_date,
        city,
        state_province,
        sq_ft

FROM
    {{ ref('bronze_store')}}