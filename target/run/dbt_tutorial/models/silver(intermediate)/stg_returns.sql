
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`stg_returns`
  
  as (
    select
        sales_id,
        product_sk,
        store_sk,
        date_sk,
        returned_qty,
        return_reason,
        refund_amount

FROM
    `dbt_tutorial_dev`.`default`.`bronze_returns`
  )
