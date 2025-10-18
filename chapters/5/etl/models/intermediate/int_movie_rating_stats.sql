{{
    config(
        materialized="table"
    )
}}

SELECT
    COUNT(*) as total_ratings,
    AVG(rating) as avg_rating,
    MIN(rating) as min_rating,
    MAX(rating) as max_rating,
    COUNT(DISTINCT user_id) as unique_user_count,
    COUNT(DISTINCT movie_id) as unique_movie_count
FROM {{ref('int_movie_rating_base')}}