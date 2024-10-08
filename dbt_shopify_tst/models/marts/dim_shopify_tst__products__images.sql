/* Table: products__images */
/* Parent: products */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."id",
    t."alt",
    t."position",
    t."product_id",
    t."created_at",
    t."updated_at",
    t."admin_graphql_api_id",
    t."width",
    t."height",
    t."src",
    t."_dlt_root_id",
    t."_dlt_parent_id",
    t."_dlt_list_idx",
    t."_dlt_id",
FROM  {{ ref('stg_shopify_tst__products__images') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_shopify_tst__products') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")