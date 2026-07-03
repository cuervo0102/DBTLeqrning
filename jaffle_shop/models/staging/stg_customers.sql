with source as (
    select * from {{ source('dbtlearning', 'raw_customers') }}
)   


select
    id as customer_id,
    first_name,
    last_name
from source
