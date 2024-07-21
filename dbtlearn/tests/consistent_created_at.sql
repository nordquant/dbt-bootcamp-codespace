SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_review') }} r
on l.listing_id=r.listing_id
WHERE l.created_at >= r.review_date
