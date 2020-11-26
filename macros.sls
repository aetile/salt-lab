{% macro test_macro() %}
{{ grains.get['host']_example:
  file.managed:
    
{% endmacro %}
