{{
  config(
    materialized = 'incremental',
    on_schema_change='fail'
    )
}}
WITH src_reviews as (
    select * from {{ ref('src_reviews') }}
)
SELECT * FROM src_reviews
where review_text is not null
{% if is_incremental() %}
  and review_date > (select max(review_date) from {{ this }})
{% endif %}