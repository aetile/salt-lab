{% set groups = ['db','back','front'] %}
{% for group in groups %}
{% set routes = pillar['netflow']['routes'][group] %}
{% for route in routes %}
{% set targets = salt['mine.get'](tgt='role:{{ route[0] }}', fun='grains.item', tgt_type='pillar', exclude_minion=true).items() | list %}
Test {{ group }} {{ route }}:
  cmd.run:
    - name: echo "targets={{ targets }}"
{% endfor %}
{% endfor %}

