{% macro test_macro() %}
{{ grains.get['host']_example:
  file.managed:
    - name: /tmp/test.conf
    - user: root
    - group: root
    - mode: 0644
    - contents:
      - master: {{ grains.get.core.get_master() }}
      - hostname: {{ grains.get('host') }}
    
{% endmacro %}
