{{ config(
    materialized='table'
) }}

WITH movie_base AS (
    SELECT
        movie_id,
        movie_title,
        genres,
        release_year
    FROM {{ ref('stg_movie_model') }}
    WHERE genres IS NOT NULL AND genres <> '' AND genres <> '(no genres listed)'
), movie_genres AS (
    SELECT
        UNNEST(string_split(genres, '|')) as genre
    FROM movie_base
)
SELECT 
    DISTINCT genre
FROM movie_genres
