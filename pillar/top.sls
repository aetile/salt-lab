base:
  '*':
    - {{ grains.get('host') }}
    - mine
    - netflow
