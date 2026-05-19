
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`mart_returns_info`
  
  as (
    with sales_return as
(
    select
        sales_id,
        product_sk,
        store_sk,
        date_sk,
        returned_qty,
        return_reason,
        refund_amount

    FROM
        `dbt_tutorial_dev`.`default`.`stg_returns`
),

products as 
(
    Select
        product_sk,
        product_name,
        department,
        category,
        list_price

    FROM
        `dbt_tutorial_dev`.`default`.`stg_products`

),

stores as 
(
    select 
        store_sk,
        store_code,
        store_name,
        region,
        country,
        open_date

    FROM
        `dbt_tutorial_dev`.`default`.`stg_stores`
),

sales_return_query as 
(
    select
        sales_return.sales_id,
        sales_return.product_sk,
        sales_return.store_sk,
        sales_return.date_sk,
        sales_return.returned_qty,
        sales_return.return_reason,
        sales_return.refund_amount,
        products.product_name,
        products.department,
        products.category,
        products.list_price,
        stores.store_code,
        stores.store_name,
        stores.region,
        stores.country,
        stores.open_date

    FROM
        sales_return
    JOIN
        products ON sales_return.product_sk = products.product_sk
    
    JOIN stores ON sales_return.store_sk = stores.store_sk

)

Select * from sales_return_query
  )
