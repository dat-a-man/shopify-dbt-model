
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_orders__payment_gateway_names`
      
    
    

    OPTIONS()
    as (
      /* Table: orders__payment_gateway_names */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst3_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_orders`

SELECT
/* select which columns will be available for table 'orders__payment_gateway_names' */
    value,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`shopify_data_tst3`.`orders__payment_gateway_names`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_orders` )
    );
  