
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`stg_customers`
  
  as (
    select 
        customer_sk,
        customer_code,
        first_name,
        last_name,
        loyalty_tier,
        gender,
        email,
        phone,
        signup_date

FROM
    `dbt_tutorial_dev`.`default`.`bronze_customer`
  )
