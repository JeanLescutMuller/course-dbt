WITH products AS (
    SELECT
        id as product_id,
        cost,
        category,
        name,
        brand,
        retail_price,
        department,
        sku,
        distribution_center_id
    FROM 
        {{ source('theLook_ecommerce_source', 'products') }}
)

SELECT * FROM products