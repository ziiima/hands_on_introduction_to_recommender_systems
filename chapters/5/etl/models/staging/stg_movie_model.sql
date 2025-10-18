{{
    config(
        materialized='view'
    )
}}

SELECT
    column0 as movie_id,
    column1 as movie_title,
    column2 as genres,
    CAST(regexp_extract(movie_title, '\((\d{4})\)', 1) AS INTEGER) as release_year
FROM read_csv_auto(
    '{{ var("data_source_path") }}/movies.dat',
    delim='::',
    header=false
)
