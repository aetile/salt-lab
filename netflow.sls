{% set hostname = grains['host'] %}
{% set targets = pillar['netflow'][hostname] %}
test 3:
  cmd.run:
    - name: echo targets={{ targets | join(',') }}

{% for socket in targets %}
Port opening from {{ hostname }} to {{ socket[0] }} {{ socket[1] }} :
  cmd.run:
    - name: telnet {{ socket[0] }} {{ socket[1] }}
  module.run:
    - name: network.connect
    - host: {{ socket[0] }}
    - port: {{ socket[1] }}
{% endfor %}
