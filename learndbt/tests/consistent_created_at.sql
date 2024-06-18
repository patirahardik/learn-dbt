SELECT * 
FROM {{ ref('dim_listing_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (lisiting_id)
where l.created_at >= r.review_date