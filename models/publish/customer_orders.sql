{{ config( alias= 'customer_orders',
    schema= 'PUBLISH',
    database= 'RAW' 
)}}

SELECT c.*,o.* 
FROM {{ source('STAGE', 'CUSTOMER') }} as c
    left join {{ source('STAGE', 'ORDERS') }} as o
        on c.C_CUSTKEY=o.O_CUSTKEY