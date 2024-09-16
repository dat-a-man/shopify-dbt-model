/* Table: orders__fulfillments */
/* Parent: orders */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."id",
    t."admin_graphql_api_id",
    t."created_at",
    t."location_id",
    t."name",
    t."order_id",
    t."service",
    t."status",
    t."updated_at",
    t."_dlt_root_id",
    t."_dlt_parent_id",
    t."_dlt_list_idx",
    t."_dlt_id",
FROM  {{ ref('stg_shopify_tst__orders__fulfillments') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_shopify_tst__orders') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")