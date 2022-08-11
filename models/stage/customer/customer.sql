{{ config( alias= 'customer',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'CUSTOMER') }}
