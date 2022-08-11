{{ config( alias= 'supplier',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'SUPPLIER') }}