with source AS (
    SELECT *
    FROM {{ source('dbtlearning', 'raw_orders') }}
)


select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from source