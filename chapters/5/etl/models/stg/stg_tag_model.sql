{{
    config(materialized='table')
}}

SELECT
    column0 as user_id,
    column1 as movie_id,
    column2 as tag,
    to_timestamp(column3) as tagged_at
FROM read_csv_auto(
    '{{ var("data_source_path") }}/tags.dat',
    delim='::',
    header=false,
    quote=''
)