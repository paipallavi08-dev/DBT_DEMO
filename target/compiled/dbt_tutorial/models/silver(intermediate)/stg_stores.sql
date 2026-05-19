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
    `dbt_tutorial_dev`.`default`.`bronze_store`