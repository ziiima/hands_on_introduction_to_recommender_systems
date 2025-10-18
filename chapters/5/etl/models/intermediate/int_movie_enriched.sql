{{
    config(
        materialized='table'
    )
}}

WITH movie_base AS (
    SELECT * FROM {{ ref('int_movie_base') }}
), movie_tag_base AS (
    SELECT * FROM {{ ref('int_movie_tag_base') }}
)
    SELECT
        b.movie_id,
        ANY_VALUE(b.movie_title) AS movie_title,
        ANY_VALUE(b.release_year) AS release_year,
        ANY_VALUE(b.genres) AS genres,
        ARRAY_AGG(t.tag) FILTER (WHERE t.tag IS NOT NULL) AS tags
    FROM movie_base AS b
    LEFT JOIN movie_tag_base AS t USING (movie_id)
    GROUP BY b.movie_id ORDER BY b.movie_id