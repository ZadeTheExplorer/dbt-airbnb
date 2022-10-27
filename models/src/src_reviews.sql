-- import raw_listings
WITH raw_reviews AS (
        SELECT * FROM {{ source('airbnb', 'reviews') }}
)
SELECT 
        listing_id,
        date as review_date,
        reviewer_name,
        sentiment as review_sentiment,
        comments as review_text
FROM raw_reviews
