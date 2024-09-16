# shopify_tst DBT Project


## Incremental loading / Lineage

This project supports incremental loading based on dlt_load_ids. Every load package in dlt 
is assigned a unique `load_id`, and every row in the dataset includes a column referencing the 
`load_id` it originated from. Child tables reference their parent and root tables, 
allowing them to be associated with a load package through a simple join operation.

To ensure that only new load packages are processed, this dbt project includes two special tables 
within the destination dataset:

### shopify_tst_dlt_active_load_ids

At the beginning of each dbt run, this table is populated with all load_ids that were 
successful (status is 0) and have not yet been processed in previous dbt runs. These are 
referred to as active load_ids. The staging tables are then populated only with rows 
associated with these active load_ids.

### shopify_tst_dlt_processed_load_ids

At the end of each dbt run, the active load_ids are recorded in this table, 
along with the current timestamp. This allows you to trace when each load_id was processed. 
Additionally, this table (if present) is checked at the beginning of each dbt run to determine 
which load_ids have already been processed, ensuring that only new data is handled.

Staging and Mart tables for the following source tables where created:
* _dlt_loads
* products
* orders
* customers
* customers__addresses
* orders__payment_gateway_names
* orders__tax_lines
* orders__fulfillments
* orders__fulfillments__line_items
* orders__fulfillments__line_items__tax_lines
* orders__fulfillments__receipt__gift_cards
* orders__line_items
* orders__line_items__tax_lines
* products__variants
* products__options
* products__options__values
* products__images
* products__images__variant_ids
* products__image__variant_ids