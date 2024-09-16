/* Table: orders__payment_gateway_names */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('shopify_tst_dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_shopify_tst__orders') }}

SELECT
/* select which columns will be available for table 'orders__payment_gateway_names' */
    "value",
    "_dlt_id",
    "_dlt_parent_id",
    "_dlt_list_idx",
    "_dlt_root_id",
FROM {{ source('raw_data', 'orders__payment_gateway_names') }}

/* we only load table items if the parent table has the parent item */
WHERE "_dlt_parent_id" IN ( SELECT "_dlt_id" FROM {{ ref('stg_shopify_tst__orders') }} )
