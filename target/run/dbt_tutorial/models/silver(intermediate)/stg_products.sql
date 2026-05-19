
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`stg_products`
  
  as (
    Select
        product_sk,
        product_code,
        product_name,
        department,
        category,
        supplier_sk,
        list_price,
        uom

FROM
    `dbt_tutorial_dev`.`default`.`bronze_product`
  )
