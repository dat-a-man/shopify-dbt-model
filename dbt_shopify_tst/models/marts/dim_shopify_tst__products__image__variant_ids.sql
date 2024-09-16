/* Table: products__image__variant_ids */
/* Parent: products */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."value",
    t."_dlt_id",
    t."_dlt_parent_id",
    t."_dlt_list_idx",
    t."_dlt_root_id",
FROM  {{ ref('stg_shopify_tst__products__image__variant_ids') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_shopify_tst__products') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")