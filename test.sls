{% set mikeslist = ['a1','b1','c1','a1'] %}
{% set mikesset = [] %}

{% for item in mikeslist %}
  {% if item not in mikesset %}
    {% do mikesset.append(item) %}
  {% endif %}
{% endfor %}

