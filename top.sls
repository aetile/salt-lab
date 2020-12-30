base:
  '*':
    - test
    - netflow

dev:
  'os:Ubuntu':
    - match: grain
    - core.init
  'role:db':
    - match: pillar
    - pgsql.init
  'role:front':
    - match: pillar
    - apache.init
  'role:back':
    - match: pillar
    - apache
