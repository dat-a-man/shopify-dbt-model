
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_products__images__variant_ids`
      
    
    

    OPTIONS()
    as (
      /* Table: products__images__variant_ids */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst3_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_products__images`

SELECT
/* select which columns will be available for table 'products__images__variant_ids' */
    value,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`shopify_data_tst3`.`products__images__variant_ids`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_products__images` )
    );
  