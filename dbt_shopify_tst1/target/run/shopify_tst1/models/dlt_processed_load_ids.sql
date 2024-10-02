
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst2_transformed`.`dlt_processed_load_ids`
      
    
    

    OPTIONS()
    as (
      

select load_id, current_timestamp() as inserted_at FROM `dlt-dev-external`.`shopify_data_tst2_transformed`.`dlt_active_load_ids`
    );
  