/* Table: orders__tax_lines */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('shopify_tst_dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_shopify_tst__orders') }}

SELECT
/* select which columns will be available for table 'orders__tax_lines' */
    "price",
    "rate",
    "title",
    "price_set__shop_money__amount",
    "price_set__shop_money__currency_code",
    "price_set__presentment_money__amount",
    "price_set__presentment_money__currency_code",
    "channel_liable",
    "_dlt_root_id",
    "_dlt_parent_id",
    "_dlt_list_idx",
    "_dlt_id",
FROM {{ source('raw_data', 'orders__tax_lines') }}

/* we only load table items if the parent table has the parent item */
WHERE "_dlt_parent_id" IN ( SELECT "_dlt_id" FROM {{ ref('stg_shopify_tst__orders') }} )
