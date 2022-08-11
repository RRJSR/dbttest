{{ config( 
    schema= 'PUBLISH',
    database= 'RAW' 
)}}

SELECT p.*,ps.* 
FROM {{ ref('part' )}} as p
    left join {{ ref('partsupp' )}} as ps
        on p.P_PARTKEY=ps.PS_PARTKEY