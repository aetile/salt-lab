copy_test_file_base:
  file.managed:
    - name: /tmp/test.txt
    - source: salt://test/test.txt
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    #- defaults:
    #    master: 'titi'
    #    hostname: 'toto'
        
 
