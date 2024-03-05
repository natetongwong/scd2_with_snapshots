{% snapshot orders_snapshot %}
{{
  config({    
    "strategy": 'timestamp',
    "target_database": "ntong",
    "target_schema": "public_test",
    "unique_key": "order_id",
    "updated_at": "updated_date"
  })
}}

WITH orders_current_model AS (

  SELECT *
  
  FROM {{ ref('orders_current_model')}}

)

SELECT *

FROM orders_current_model

{% endsnapshot %}
