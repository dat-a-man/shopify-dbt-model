
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst3_transformed`.`fact_orders__fulfillments`
      
    
    

    OPTIONS()
    as (
      /* Fact Table: orders__fulfillments */


SELECT
    ---- main table orders__fulfillments
    orders__fulfillments._dlt_id,
    orders__fulfillments.id,
    orders__fulfillments.admin_graphql_api_id,
    orders__fulfillments.created_at,
    orders__fulfillments.location_id,
    orders__fulfillments.name,
    orders__fulfillments.order_id,
    orders__fulfillments.service,
    orders__fulfillments.status,
    orders__fulfillments.updated_at,
    orders__fulfillments._dlt_root_id,
    orders__fulfillments._dlt_parent_id,
    orders__fulfillments._dlt_list_idx,
    orders__fulfillments._dlt_id,
    
    ---- dim table orders via orders__order_id
    orders__order_id.id as orders__order_id__id,
    -- orders__order_id.admin_graphql_api_id as orders__order_id__admin_graphql_api_id,
    -- orders__order_id.app_id as orders__order_id__app_id,
    -- orders__order_id.browser_ip as orders__order_id__browser_ip,
    -- orders__order_id.buyer_accepts_marketing as orders__order_id__buyer_accepts_marketing,
    -- orders__order_id.checkout_id as orders__order_id__checkout_id,
    -- orders__order_id.checkout_token as orders__order_id__checkout_token,
    -- orders__order_id.client_details__browser_ip as orders__order_id__client_details__browser_ip,
    -- orders__order_id.client_details__user_agent as orders__order_id__client_details__user_agent,
    -- orders__order_id.closed_at as orders__order_id__closed_at,
    -- orders__order_id.confirmation_number as orders__order_id__confirmation_number,
    -- orders__order_id.confirmed as orders__order_id__confirmed,
    -- orders__order_id.created_at as orders__order_id__created_at,
    -- orders__order_id.currency as orders__order_id__currency,
    -- orders__order_id.current_subtotal_price as orders__order_id__current_subtotal_price,
    -- orders__order_id.current_subtotal_price_set__shop_money__amount as orders__order_id__current_subtotal_price_set__shop_money__amount,
    -- orders__order_id.current_subtotal_price_set__shop_money__currency_code as orders__order_id__current_subtotal_price_set__shop_money__currency_code,
    -- orders__order_id.current_subtotal_price_set__presentment_money__amount as orders__order_id__current_subtotal_price_set__presentment_money__amount,
    -- orders__order_id.current_subtotal_price_set__presentment_money__currency_code as orders__order_id__current_subtotal_price_set__presentment_money__currency_code,
    -- orders__order_id.current_total_discounts as orders__order_id__current_total_discounts,
    -- orders__order_id.current_total_discounts_set__shop_money__amount as orders__order_id__current_total_discounts_set__shop_money__amount,
    -- orders__order_id.current_total_discounts_set__shop_money__currency_code as orders__order_id__current_total_discounts_set__shop_money__currency_code,
    -- orders__order_id.current_total_discounts_set__presentment_money__amount as orders__order_id__current_total_discounts_set__presentment_money__amount,
    -- orders__order_id.current_total_discounts_set__presentment_money__currency_code as orders__order_id__current_total_discounts_set__presentment_money__currency_code,
    -- orders__order_id.current_total_price as orders__order_id__current_total_price,
    -- orders__order_id.current_total_price_set__shop_money__amount as orders__order_id__current_total_price_set__shop_money__amount,
    -- orders__order_id.current_total_price_set__shop_money__currency_code as orders__order_id__current_total_price_set__shop_money__currency_code,
    -- orders__order_id.current_total_price_set__presentment_money__amount as orders__order_id__current_total_price_set__presentment_money__amount,
    -- orders__order_id.current_total_price_set__presentment_money__currency_code as orders__order_id__current_total_price_set__presentment_money__currency_code,
    -- orders__order_id.current_total_tax as orders__order_id__current_total_tax,
    -- orders__order_id.current_total_tax_set__shop_money__amount as orders__order_id__current_total_tax_set__shop_money__amount,
    -- orders__order_id.current_total_tax_set__shop_money__currency_code as orders__order_id__current_total_tax_set__shop_money__currency_code,
    -- orders__order_id.current_total_tax_set__presentment_money__amount as orders__order_id__current_total_tax_set__presentment_money__amount,
    -- orders__order_id.current_total_tax_set__presentment_money__currency_code as orders__order_id__current_total_tax_set__presentment_money__currency_code,
    -- orders__order_id.customer_locale as orders__order_id__customer_locale,
    -- orders__order_id.email as orders__order_id__email,
    -- orders__order_id.estimated_taxes as orders__order_id__estimated_taxes,
    -- orders__order_id.financial_status as orders__order_id__financial_status,
    -- orders__order_id.fulfillment_status as orders__order_id__fulfillment_status,
    -- orders__order_id.location_id as orders__order_id__location_id,
    -- orders__order_id.name as orders__order_id__name,
    -- orders__order_id.number as orders__order_id__number,
    -- orders__order_id.order_number as orders__order_id__order_number,
    -- orders__order_id.order_status_url as orders__order_id__order_status_url,
    -- orders__order_id.presentment_currency as orders__order_id__presentment_currency,
    -- orders__order_id.processed_at as orders__order_id__processed_at,
    -- orders__order_id.reference as orders__order_id__reference,
    -- orders__order_id.source_identifier as orders__order_id__source_identifier,
    -- orders__order_id.source_name as orders__order_id__source_name,
    -- orders__order_id.subtotal_price as orders__order_id__subtotal_price,
    -- orders__order_id.subtotal_price_set__shop_money__amount as orders__order_id__subtotal_price_set__shop_money__amount,
    -- orders__order_id.subtotal_price_set__shop_money__currency_code as orders__order_id__subtotal_price_set__shop_money__currency_code,
    -- orders__order_id.subtotal_price_set__presentment_money__amount as orders__order_id__subtotal_price_set__presentment_money__amount,
    -- orders__order_id.subtotal_price_set__presentment_money__currency_code as orders__order_id__subtotal_price_set__presentment_money__currency_code,
    -- orders__order_id.tags as orders__order_id__tags,
    -- orders__order_id.tax_exempt as orders__order_id__tax_exempt,
    -- orders__order_id.taxes_included as orders__order_id__taxes_included,
    -- orders__order_id.test as orders__order_id__test,
    -- orders__order_id.token as orders__order_id__token,
    -- orders__order_id.total_discounts as orders__order_id__total_discounts,
    -- orders__order_id.total_discounts_set__shop_money__amount as orders__order_id__total_discounts_set__shop_money__amount,
    -- orders__order_id.total_discounts_set__shop_money__currency_code as orders__order_id__total_discounts_set__shop_money__currency_code,
    -- orders__order_id.total_discounts_set__presentment_money__amount as orders__order_id__total_discounts_set__presentment_money__amount,
    -- orders__order_id.total_discounts_set__presentment_money__currency_code as orders__order_id__total_discounts_set__presentment_money__currency_code,
    -- orders__order_id.total_line_items_price as orders__order_id__total_line_items_price,
    -- orders__order_id.total_line_items_price_set__shop_money__amount as orders__order_id__total_line_items_price_set__shop_money__amount,
    -- orders__order_id.total_line_items_price_set__shop_money__currency_code as orders__order_id__total_line_items_price_set__shop_money__currency_code,
    -- orders__order_id.total_line_items_price_set__presentment_money__amount as orders__order_id__total_line_items_price_set__presentment_money__amount,
    -- orders__order_id.total_line_items_price_set__presentment_money__currency_code as orders__order_id__total_line_items_price_set__presentment_money__currency_code,
    -- orders__order_id.total_outstanding as orders__order_id__total_outstanding,
    -- orders__order_id.total_price as orders__order_id__total_price,
    -- orders__order_id.total_price_set__shop_money__amount as orders__order_id__total_price_set__shop_money__amount,
    -- orders__order_id.total_price_set__shop_money__currency_code as orders__order_id__total_price_set__shop_money__currency_code,
    -- orders__order_id.total_price_set__presentment_money__amount as orders__order_id__total_price_set__presentment_money__amount,
    -- orders__order_id.total_price_set__presentment_money__currency_code as orders__order_id__total_price_set__presentment_money__currency_code,
    -- orders__order_id.total_shipping_price_set__shop_money__amount as orders__order_id__total_shipping_price_set__shop_money__amount,
    -- orders__order_id.total_shipping_price_set__shop_money__currency_code as orders__order_id__total_shipping_price_set__shop_money__currency_code,
    -- orders__order_id.total_shipping_price_set__presentment_money__amount as orders__order_id__total_shipping_price_set__presentment_money__amount,
    -- orders__order_id.total_shipping_price_set__presentment_money__currency_code as orders__order_id__total_shipping_price_set__presentment_money__currency_code,
    -- orders__order_id.total_tax as orders__order_id__total_tax,
    -- orders__order_id.total_tax_set__shop_money__amount as orders__order_id__total_tax_set__shop_money__amount,
    -- orders__order_id.total_tax_set__shop_money__currency_code as orders__order_id__total_tax_set__shop_money__currency_code,
    -- orders__order_id.total_tax_set__presentment_money__amount as orders__order_id__total_tax_set__presentment_money__amount,
    -- orders__order_id.total_tax_set__presentment_money__currency_code as orders__order_id__total_tax_set__presentment_money__currency_code,
    -- orders__order_id.total_tip_received as orders__order_id__total_tip_received,
    -- orders__order_id.total_weight as orders__order_id__total_weight,
    -- orders__order_id.updated_at as orders__order_id__updated_at,
    -- orders__order_id.user_id as orders__order_id__user_id,
    -- orders__order_id.billing_address__first_name as orders__order_id__billing_address__first_name,
    -- orders__order_id.billing_address__address1 as orders__order_id__billing_address__address1,
    -- orders__order_id.billing_address__city as orders__order_id__billing_address__city,
    -- orders__order_id.billing_address__zip as orders__order_id__billing_address__zip,
    -- orders__order_id.billing_address__province as orders__order_id__billing_address__province,
    -- orders__order_id.billing_address__country as orders__order_id__billing_address__country,
    -- orders__order_id.billing_address__last_name as orders__order_id__billing_address__last_name,
    -- orders__order_id.billing_address__address2 as orders__order_id__billing_address__address2,
    -- orders__order_id.billing_address__latitude as orders__order_id__billing_address__latitude,
    -- orders__order_id.billing_address__longitude as orders__order_id__billing_address__longitude,
    -- orders__order_id.billing_address__name as orders__order_id__billing_address__name,
    -- orders__order_id.billing_address__country_code as orders__order_id__billing_address__country_code,
    -- orders__order_id.billing_address__province_code as orders__order_id__billing_address__province_code,
    
    ---- dim table orders via orders
    orders.id as orders__id,
    -- orders.admin_graphql_api_id as orders__admin_graphql_api_id,
    -- orders.app_id as orders__app_id,
    -- orders.browser_ip as orders__browser_ip,
    -- orders.buyer_accepts_marketing as orders__buyer_accepts_marketing,
    -- orders.checkout_id as orders__checkout_id,
    -- orders.checkout_token as orders__checkout_token,
    -- orders.client_details__browser_ip as orders__client_details__browser_ip,
    -- orders.client_details__user_agent as orders__client_details__user_agent,
    -- orders.closed_at as orders__closed_at,
    -- orders.confirmation_number as orders__confirmation_number,
    -- orders.confirmed as orders__confirmed,
    -- orders.created_at as orders__created_at,
    -- orders.currency as orders__currency,
    -- orders.current_subtotal_price as orders__current_subtotal_price,
    -- orders.current_subtotal_price_set__shop_money__amount as orders__current_subtotal_price_set__shop_money__amount,
    -- orders.current_subtotal_price_set__shop_money__currency_code as orders__current_subtotal_price_set__shop_money__currency_code,
    -- orders.current_subtotal_price_set__presentment_money__amount as orders__current_subtotal_price_set__presentment_money__amount,
    -- orders.current_subtotal_price_set__presentment_money__currency_code as orders__current_subtotal_price_set__presentment_money__currency_code,
    -- orders.current_total_discounts as orders__current_total_discounts,
    -- orders.current_total_discounts_set__shop_money__amount as orders__current_total_discounts_set__shop_money__amount,
    -- orders.current_total_discounts_set__shop_money__currency_code as orders__current_total_discounts_set__shop_money__currency_code,
    -- orders.current_total_discounts_set__presentment_money__amount as orders__current_total_discounts_set__presentment_money__amount,
    -- orders.current_total_discounts_set__presentment_money__currency_code as orders__current_total_discounts_set__presentment_money__currency_code,
    -- orders.current_total_price as orders__current_total_price,
    -- orders.current_total_price_set__shop_money__amount as orders__current_total_price_set__shop_money__amount,
    -- orders.current_total_price_set__shop_money__currency_code as orders__current_total_price_set__shop_money__currency_code,
    -- orders.current_total_price_set__presentment_money__amount as orders__current_total_price_set__presentment_money__amount,
    -- orders.current_total_price_set__presentment_money__currency_code as orders__current_total_price_set__presentment_money__currency_code,
    -- orders.current_total_tax as orders__current_total_tax,
    -- orders.current_total_tax_set__shop_money__amount as orders__current_total_tax_set__shop_money__amount,
    -- orders.current_total_tax_set__shop_money__currency_code as orders__current_total_tax_set__shop_money__currency_code,
    -- orders.current_total_tax_set__presentment_money__amount as orders__current_total_tax_set__presentment_money__amount,
    -- orders.current_total_tax_set__presentment_money__currency_code as orders__current_total_tax_set__presentment_money__currency_code,
    -- orders.customer_locale as orders__customer_locale,
    -- orders.email as orders__email,
    -- orders.estimated_taxes as orders__estimated_taxes,
    -- orders.financial_status as orders__financial_status,
    -- orders.fulfillment_status as orders__fulfillment_status,
    -- orders.location_id as orders__location_id,
    -- orders.name as orders__name,
    -- orders.number as orders__number,
    -- orders.order_number as orders__order_number,
    -- orders.order_status_url as orders__order_status_url,
    -- orders.presentment_currency as orders__presentment_currency,
    -- orders.processed_at as orders__processed_at,
    -- orders.reference as orders__reference,
    -- orders.source_identifier as orders__source_identifier,
    -- orders.source_name as orders__source_name,
    -- orders.subtotal_price as orders__subtotal_price,
    -- orders.subtotal_price_set__shop_money__amount as orders__subtotal_price_set__shop_money__amount,
    -- orders.subtotal_price_set__shop_money__currency_code as orders__subtotal_price_set__shop_money__currency_code,
    -- orders.subtotal_price_set__presentment_money__amount as orders__subtotal_price_set__presentment_money__amount,
    -- orders.subtotal_price_set__presentment_money__currency_code as orders__subtotal_price_set__presentment_money__currency_code,
    -- orders.tags as orders__tags,
    -- orders.tax_exempt as orders__tax_exempt,
    -- orders.taxes_included as orders__taxes_included,
    -- orders.test as orders__test,
    -- orders.token as orders__token,
    -- orders.total_discounts as orders__total_discounts,
    -- orders.total_discounts_set__shop_money__amount as orders__total_discounts_set__shop_money__amount,
    -- orders.total_discounts_set__shop_money__currency_code as orders__total_discounts_set__shop_money__currency_code,
    -- orders.total_discounts_set__presentment_money__amount as orders__total_discounts_set__presentment_money__amount,
    -- orders.total_discounts_set__presentment_money__currency_code as orders__total_discounts_set__presentment_money__currency_code,
    -- orders.total_line_items_price as orders__total_line_items_price,
    -- orders.total_line_items_price_set__shop_money__amount as orders__total_line_items_price_set__shop_money__amount,
    -- orders.total_line_items_price_set__shop_money__currency_code as orders__total_line_items_price_set__shop_money__currency_code,
    -- orders.total_line_items_price_set__presentment_money__amount as orders__total_line_items_price_set__presentment_money__amount,
    -- orders.total_line_items_price_set__presentment_money__currency_code as orders__total_line_items_price_set__presentment_money__currency_code,
    -- orders.total_outstanding as orders__total_outstanding,
    -- orders.total_price as orders__total_price,
    -- orders.total_price_set__shop_money__amount as orders__total_price_set__shop_money__amount,
    -- orders.total_price_set__shop_money__currency_code as orders__total_price_set__shop_money__currency_code,
    -- orders.total_price_set__presentment_money__amount as orders__total_price_set__presentment_money__amount,
    -- orders.total_price_set__presentment_money__currency_code as orders__total_price_set__presentment_money__currency_code,
    -- orders.total_shipping_price_set__shop_money__amount as orders__total_shipping_price_set__shop_money__amount,
    -- orders.total_shipping_price_set__shop_money__currency_code as orders__total_shipping_price_set__shop_money__currency_code,
    -- orders.total_shipping_price_set__presentment_money__amount as orders__total_shipping_price_set__presentment_money__amount,
    -- orders.total_shipping_price_set__presentment_money__currency_code as orders__total_shipping_price_set__presentment_money__currency_code,
    -- orders.total_tax as orders__total_tax,
    -- orders.total_tax_set__shop_money__amount as orders__total_tax_set__shop_money__amount,
    -- orders.total_tax_set__shop_money__currency_code as orders__total_tax_set__shop_money__currency_code,
    -- orders.total_tax_set__presentment_money__amount as orders__total_tax_set__presentment_money__amount,
    -- orders.total_tax_set__presentment_money__currency_code as orders__total_tax_set__presentment_money__currency_code,
    -- orders.total_tip_received as orders__total_tip_received,
    -- orders.total_weight as orders__total_weight,
    -- orders.updated_at as orders__updated_at,
    -- orders.user_id as orders__user_id,
    -- orders.billing_address__first_name as orders__billing_address__first_name,
    -- orders.billing_address__address1 as orders__billing_address__address1,
    -- orders.billing_address__city as orders__billing_address__city,
    -- orders.billing_address__zip as orders__billing_address__zip,
    -- orders.billing_address__province as orders__billing_address__province,
    -- orders.billing_address__country as orders__billing_address__country,
    -- orders.billing_address__last_name as orders__billing_address__last_name,
    -- orders.billing_address__address2 as orders__billing_address__address2,
    -- orders.billing_address__latitude as orders__billing_address__latitude,
    -- orders.billing_address__longitude as orders__billing_address__longitude,
    -- orders.billing_address__name as orders__billing_address__name,
    -- orders.billing_address__country_code as orders__billing_address__country_code,
    -- orders.billing_address__province_code as orders__billing_address__province_code,
    

FROM  `dlt-dev-external`.`shopify_data_tst3_transformed`.`stg_orders__fulfillments` as orders__fulfillments
LEFT JOIN `dlt-dev-external`.`shopify_data_tst3_transformed`.`fact_orders` as orders__order_id ON
        orders__order_id.id = orders__fulfillments.order_id

LEFT JOIN `dlt-dev-external`.`shopify_data_tst3_transformed`.`fact_orders` as orders ON
        orders._dlt_id = orders__fulfillments._dlt_parent_id
    );
  