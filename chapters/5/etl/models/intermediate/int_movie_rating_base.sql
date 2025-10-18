{{
    config(
        materialized="table"
    )
}}

SELECT
    user_id,
    movie_id,
    rating,
    rated_at
FROM {{ ref('stg_rating_model') }}