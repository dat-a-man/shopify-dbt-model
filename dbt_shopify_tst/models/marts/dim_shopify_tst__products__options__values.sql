/* Table: products__options__values */
/* Parent: products__options */
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
FROM  {{ ref('stg_shopify_tst__products__options__values') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_shopify_tst__products__options') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")