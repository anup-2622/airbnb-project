{% macro trimmer(column_name , node) %}
    {{ col_name | trim | upper }} 
    {#  trim and upper is inbuilt function #}
{% endmacro %}