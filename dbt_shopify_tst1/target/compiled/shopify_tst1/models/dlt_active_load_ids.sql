/* check if the destination already has a list of processed ids
if not we will process all loads with status 0 (==success) */


SELECT load_id FROM `dlt-dev-external`.`shopify_data_tst2`.`_dlt_loads`
WHERE status = 0
/* exclude already processed load_ids */
