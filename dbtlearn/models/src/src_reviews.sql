WITH src_reviews AS ( 
    SELECT *
    FROM {{ source('airbnb', 'reviews') }}
)
SELECT 
    listing_id,
    date as review_data,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
FROM src_reviews