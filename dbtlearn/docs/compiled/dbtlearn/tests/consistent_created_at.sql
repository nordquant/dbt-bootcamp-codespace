SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_review r
on l.listing_id=r.listing_id
WHERE l.created_at >= r.review_date