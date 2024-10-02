
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst2_transformed`.`dim__dlt_loads`
      
    
    

    OPTIONS()
    as (
      /* Table: _dlt_loads */

/* Description: Created by DLT. Tracks completed loads */
SELECT
    t.load_id,
    t.schema_name,
    t.status,
    t.inserted_at,
    t.schema_version_hash,
FROM  `dlt-dev-external`.`shopify_data_tst2_transformed`.`stg__dlt_loads` as t
    );
  