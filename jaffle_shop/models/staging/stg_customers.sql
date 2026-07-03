with source as (
    select * from {{ source('dbtlearning', 'raw_customers') }}
)   


select
    id as payment_id,
    order_id,
    payment_method,
    amount / 100.0 as amount  
from source
