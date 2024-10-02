{{
    config(
        materialized='incremental'
    )
}}

select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('dlt_active_load_ids') }}