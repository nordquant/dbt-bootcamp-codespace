WITH src_reviews AS ( 
    SELECT *
    FROM AIRBNB.RAW.RAW_REVIEWS
)
SELECT 
    listing_id,
    date as review_data,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
FROM src_reviews