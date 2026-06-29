{% macro tag(column) %}

  CASE
    WHEN {{column}} <100 THEN 'low'
    WHEN {{column}} >=100 and {{column}} <200 THEN 'medium'
 
    ELSE 'high'
  END  
{% endmacro %}