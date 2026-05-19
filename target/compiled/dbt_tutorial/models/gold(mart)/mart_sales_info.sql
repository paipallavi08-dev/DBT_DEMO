with sales as
(
    select
        sales_id,
        product_sk,
        customer_sk,
        date_sk,
        gross_amount,
        net_amount,
        payment_method,
        

(quantity*unit_price)


 as calc_gross_amount

    FROM
        `dbt_tutorial_dev`.`default`.`stg_sales`
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

customers as 
(
    select 
        customer_sk,
        customer_code,
        loyalty_tier,
        gender

    FROM
        `dbt_tutorial_dev`.`default`.`stg_customers`
),

sales_query as 
(
    select
        sales.sales_id,
        sales.product_sk,
        sales.customer_sk,
        sales.date_sk,
        sales.gross_amount,
        sales.net_amount,
        sales.payment_method,
        sales.calc_gross_amount,
        products.product_name,
        products.department,
        products.category,
        products.list_price,
        customers.customer_code,
        customers.loyalty_tier,
        customers.gender

    FROM
        sales
    JOIN
        products ON sales.product_sk = products.product_sk
    
    JOIN customers ON sales.customer_sk = customers.customer_sk

)

Select * from sales_query