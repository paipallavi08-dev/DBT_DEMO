select
        sales_id,
        product_sk,
        store_sk,
        date_sk,
        returned_qty,
        return_reason,
        refund_amount

FROM
    {{ ref('bronze_returns')}}