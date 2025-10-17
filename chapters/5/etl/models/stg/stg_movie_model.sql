{{
    config(
        materialized='table'
    )
}}

SELECT
    column0 as movie_id,
    column1 as movie_title,
    column2 as genres
FROM read_csv_auto(
    '{{ var("data_source_path") }}/movies.dat',
    delim='::',
    header=false
)
