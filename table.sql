SELECT
olist_order_dataset.order_id,
order_status,
order_purchase_timestamp,
customer_state,
price,
product_category_name_english
FROM olist_order_dataset
JOIN olist_order_customer_dataset ON olist_order_dataset.customer_id = olist_order_customer_dataset.customer_id
JOIN olist_order_items_dataset ON olist_order_dataset.order_id = olist_order_items_dataset.order_id
JOIN olist_products_dataset ON olist_order_items_dataset.product_id = olist_products_dataset.product_id
JOIN product_category_name_translation ON olist_products_dataset.product_category_name = product_category_name_translation.product_category_name;