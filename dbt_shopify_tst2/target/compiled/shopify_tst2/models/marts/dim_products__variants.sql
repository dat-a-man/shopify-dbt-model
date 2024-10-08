/* Table: products__variants */
/* Parent: products */

SELECT
    t.id,
    t.product_id,
    t.title,
    t.price,
    t.position,
    t.inventory_policy,
    t.option1,
    t.created_at,
    t.updated_at,
    t.taxable,
    t.fulfillment_service,
    t.grams,
    t.inventory_management,
    t.requires_shipping,
    t.sku,
    t.weight,
    t.weight_unit,
    t.inventory_item_id,
    t.inventory_quantity,
    t.old_inventory_quantity,
    t.admin_graphql_api_id,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
    t.image_id,
    t.compare_at_price,
FROM  `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_products__variants` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_products` as pt
ON (t._dlt_parent_id = pt._dlt_id)