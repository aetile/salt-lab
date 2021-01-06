{% set groups = ['db','back','front'] %}
{% for group in groups %}
{% set routes = pillar['netflow']['routes'][group] %}
{% for route in routes %}
{% set targets = salt['mine.get'](tgt='role:{{ route[0] }}', fun='grains.item', tgt_type='pillar', exclude_minion=true).items() | list %}
Test {{ group }} {{ route }}:
  cmd.run:
    - name: echo "{{ group }} {{ route }} {{ targets }}"
{% for target in targets %}
Socket check {{ group }} {{ route }} {{ target }} {{ route[1] }}/{{ route[2] }}:
  salt.function:
    - name: network.connect
    - tgt: 'role:{{ group }}'
    - tgt_type: pillar
    - exclude: master
    - arg:
        - {{ target }}
        - {{ route[2] }}
    - kwarg:
        proto: {{ route[1] }}
        timeout: {{ pillar['netflow']['timeout'] }}
{% endfor %}
{% endfor %}
{% endfor %}

