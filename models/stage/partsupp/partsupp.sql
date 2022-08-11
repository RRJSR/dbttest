{{ config( alias= 'partsupp',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'PARTSUPP') }}