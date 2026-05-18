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
    {{ ref('bronze_customer')}}