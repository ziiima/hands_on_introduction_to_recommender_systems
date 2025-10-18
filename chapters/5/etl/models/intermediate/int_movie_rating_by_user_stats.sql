{{
    config(
        materialized='table'
    )
}}

SELECT
    user_id,
    COUNT(movie_id) AS total_ratings,
    AVG(rating) AS avg_rating,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating
FROM {{ ref('int_movie_rating_base') }}
GROUP BY user_id