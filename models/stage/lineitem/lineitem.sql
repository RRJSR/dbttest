{{ config( alias= 'lineitem',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'LINEITEM') }}