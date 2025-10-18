{{ config(
    materialized='table'
) }}

WITH stg_movie_base AS (
    SELECT
        movie_id,
        movie_title,
        release_year,
        string_split(genres, '|') as genres,
        array_length(string_split(genres, '|')) as genre_count
    FROM {{ ref('stg_movie_model') }}
)
SELECT
    movie_id,
    movie_title,
    genres,
    release_year
FROM stg_movie_base