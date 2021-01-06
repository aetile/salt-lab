{% set hostname = grains['host'] %}
{% if pillar['netflow']['channels'][hostname.lower()] is defined %}
{% set targets = pillar['netflow']['channels'][hostname.lower()] %}
{% for socket in targets %}
Port opening from {{ hostname }} to {{ socket[0] }} {{ socket[2] }}/{{ socket[1] }} :
  cmd.run:
    - name: telnet {{ socket[0] }} {{ socket[1] }}
  module.run:
    - name: network.connect
    - host: {{ socket[0] }}
    - port: {{ socket[1] }}
    - proto: {{ socket[2] }}
    - timeout: {{ pillar['netflow']['timeout'] }}
{% endfor %}
{% endif %}
