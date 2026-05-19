select
        sales_id,
        product_sk,
        customer_sk,
        date_sk,
        store_sk,
        promotion_sk,
        quantity,
        unit_price,
        gross_amount,
        net_amount,
        discount_amount,
        payment_method

    From `dbt_tutorial_dev`.`default`.`bronze_sales`