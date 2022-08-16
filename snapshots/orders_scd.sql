{% snapshot orders_snapshot %}

{{
    config(
    target_database='raw',
    target_schema='publish',
    unique_key='O_ORDERKEY',

    strategy='timestamp',
    updated_at='O_ORDERDATE', 

    )
}}

select * from "RAW"."RAW_SOURCE"."ORDERS"

{% endsnapshot %}