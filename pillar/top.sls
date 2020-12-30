base:
  '*':
    - {{ grains.get('host') }}
    - netflow
