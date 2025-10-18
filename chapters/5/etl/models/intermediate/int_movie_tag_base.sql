{{
    config(materialized='table')
}}
WITH stg_tags AS (
    SELECT
        user_id,
        movie_id,
        lower(tag) as tag,
        tagged_at
    FROM {{ ref('stg_tag_model') }}
) SELECT * FROM stg_tags