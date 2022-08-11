{{ config( alias= 'orders',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'ORDERS') }} 
