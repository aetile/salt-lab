{% if grains['os'] == 'Ubuntu' %}
apache2:
  pkg:
    - installed
{% endif %}
