{{
    config(
        materialized='table'
    )
}}

WITH movie_base AS (
    SELECT * FROM {{ ref('int_movie_base') }}
), movie_tag_base AS (
    SELECT * FROM {{ ref('int_movie_tag_base') }}
), movie_enriched AS (
    SELECT
        b.movie_id,
        ANY_VALUE(b.movie_title) AS movie_title,
        ANY_VALUE(b.release_year) AS release_year,
        ANY_VALUE(b.genres) AS genres,
        ARRAY_AGG(t.tag) FILTER (WHERE t.tag IS NOT NULL) AS tags
    FROM movie_base AS b
    LEFT JOIN movie_tag_base AS t USING (movie_id)
    GROUP BY b.movie_id
) SELECT
    COUNT(*) AS raw_count,
    COUNT(DISTINCT movie_id) AS unique_movie_count,
    AVG(array_length(tags)) AS avg_tag_count_per_movie,
    MAX(array_length(tags)) AS max_tag_count_per_movie,
    MIN(array_length(tags)) AS min_tag_count_per_movie
FROM movie_enriched