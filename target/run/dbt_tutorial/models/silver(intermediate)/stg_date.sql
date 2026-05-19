
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`stg_date`
  
  as (
    select 
        date_sk,
        date,
        day,
        month,
        month_name,
        quarter,
        year,
        day_of_week,
        day_name,
        is_weekend,
        is_month_end,
        is_month_start,
        is_quarter_start,
        is_quarter_end

    FROM
        `dbt_tutorial_dev`.`default`.`bronze_date`
  )
