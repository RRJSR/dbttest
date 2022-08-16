{% snapshot customer_snapshot %}

{{
    config(
    target_database='raw',
    target_schema='publish',
    unique_key='C_CUSTKEY',

    strategy='check',
    check_cols=[ 'C_NAME','C_ADDRESS', 
    'C_NATIONKEY', 'C_PHONE', 'C_ACCTBAL', 'C_MKTSEGMENT',
     'C_COMMENT'], 

    )
}}

select * from "RAW"."RAW_SOURCE"."CUSTOMER"

{% endsnapshot %}