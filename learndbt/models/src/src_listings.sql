WITH raw_listings AS (
    select * from AIRBNB.RAW.RAW_LISTINGS
)
SELECT
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings