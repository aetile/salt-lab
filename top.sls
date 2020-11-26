base:
  '*':
    - test
  'role:db':
    - match: pillar
    - sqlsrv.init
  'role:front':
    - match: pillar
    - apache.init
  'role:back':
    - match: pillar
    - apache 

dev:
  'os:Ubuntu':
    - match: grain
    - core.init
