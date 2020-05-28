    SELECT 
        "orderID" as order_ID
        , ID as customer_ID
        --- amount is stored in cents, convert it to dollars
        , amount/100 as amount 
        , "paymentMethod" as payment_method
        , created
        , _batched_at as batched_at
    FROM {{ source('stripe', 'payment') }}
    
    --raw.stripe.payment