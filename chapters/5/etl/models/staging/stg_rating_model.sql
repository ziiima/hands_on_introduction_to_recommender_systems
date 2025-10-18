{{
    config(
        materialized='view'
    )
}}

SELECT
    column0 as user_id,
    column1 as movie_id,
    column2 as rating,
    to_timestamp(column3) as rated_at
FROM read_csv_auto(
    '{{ var("data_source_path") }}/ratings.dat',
    delim='::',
    header=false
)