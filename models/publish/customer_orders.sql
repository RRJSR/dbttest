{{ config( 
    schema= 'PUBLISH',
    database= 'RAW' 
)}}

SELECT c.*,o.* 
FROM {{ ref('customer' )}} as c
    left join {{ ref('orders' )}} as o
        on c.C_CUSTKEY=o.O_CUSTKEY