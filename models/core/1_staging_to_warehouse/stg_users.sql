WITH users AS (
    SELECT
        id AS user_id,
        first_name,
        last_name,
        email,
        age,
        gender,
        state,
        street_address,
        postal_code,
        city,
        country,
        latitude,
        longitude,
        traffic_source,
        created_at
    FROM
      {{ source('theLook_ecommerce_source', 'users') }}
)

SELECT * FROM users