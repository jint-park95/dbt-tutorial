{{
    config(
        materialized='table'
    )
}}

{{
    dbt_utils.date_spine(
        datepart='day',
        start_date="CAST('2020-01-01' AS DATE)",
        end_date="CURRENT_DATE()"
    )
}}