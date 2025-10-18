{{
    config(materialized='table')
}}
WITH movie_rating_base AS (
    SELECT
    user_id,
    movie_id,
    rating,
    rated_at FROM {{ ref("int_movie_rating_base") }}
) SELECT
    movie_id,
    COUNT(movie_id) AS movie_count,
    COUNT(user_id) AS user_count,
    COUNT(rating) AS total_ratings,
    AVG(rating) AS avg_rating,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating,
    STDDEV(rating) AS stddev_rating
FROM movie_rating_base GROUP BY movie_id ORDER BY movie_id
