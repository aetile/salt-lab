netflow:
  timeout: 3
  channels:
    minion1:
      - [ "192.168.5.61", 22, 'tcp' ]
      - [ "192.168.5.61", 80, 'tcp' ]
    minion2:
      - [ "192.168.5.61", 22, 'tcp' ]
      - [ "192.168.5.61", 80, 'tcp' ]
  routes:
    front:
      - [ 'back', 'tcp', 22 ]
      - [ 'db', 'tcp', 1521 ]
    back:
      - [ 'front', 'tcp', 80 ]
      - [ 'db', 'tcp', 1521 ]
    db:
      - [ 'db', 'tcp', 1521 ]

