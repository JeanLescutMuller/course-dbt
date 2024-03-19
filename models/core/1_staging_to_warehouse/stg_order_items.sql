WITH order_items AS (
    SELECT
        id as order_item_id,
        order_id,
        user_id,
        product_id,
        inventory_item_id,
        status,
        created_at,
        shipped_at,
        delivered_at,
        returned_at,
        ROUND(sale_price, 2) AS sale_price    
    FROM 
        {{ source('theLook_ecommerce_source', 'order_items') }}
)

SELECT * FROM order_items