{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim_shopify_tst___dlt_loads') }}
-- depends_on: {{ ref('dim_shopify_tst__products') }}
-- depends_on: {{ ref('dim_shopify_tst__orders') }}
-- depends_on: {{ ref('dim_shopify_tst__customers') }}
-- depends_on: {{ ref('dim_shopify_tst__customers__addresses') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__payment_gateway_names') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__tax_lines') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__fulfillments') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__fulfillments__line_items') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__fulfillments__line_items__tax_lines') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__fulfillments__receipt__gift_cards') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__line_items') }}
-- depends_on: {{ ref('dim_shopify_tst__orders__line_items__tax_lines') }}
-- depends_on: {{ ref('dim_shopify_tst__products__variants') }}
-- depends_on: {{ ref('dim_shopify_tst__products__options') }}
-- depends_on: {{ ref('dim_shopify_tst__products__options__values') }}
-- depends_on: {{ ref('dim_shopify_tst__products__images') }}
-- depends_on: {{ ref('dim_shopify_tst__products__images__variant_ids') }}
-- depends_on: {{ ref('dim_shopify_tst__products__image__variant_ids') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('shopify_tst_dlt_active_load_ids') }}