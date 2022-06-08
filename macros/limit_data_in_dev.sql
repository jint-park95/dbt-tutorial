{% macro limit_data_in_dev(column_name, days_of_data=3) -%}
{%- if target.name == "dev" -%}
WHERE CAST({{ column_name }} AS DATE) >= DATE_SUB(CURRENT_DATE(), INTERVAL {{ days_of_data }} DAY)
{%- endif -%}
{%- endmacro %}