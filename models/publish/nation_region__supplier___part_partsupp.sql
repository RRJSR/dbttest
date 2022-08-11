{{ config( 
    schema= 'PUBLISH',
    database= 'RAW' 
)}}

SELECT nrs.*,pps.* 
FROM {{ ref('nation_region__supplier' )}} as nrs
    left join {{ ref('part_partsupp' )}} as pps
        on nrs.S_SUPPKEY=pps.PS_SUPPKEY