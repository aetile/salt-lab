#!/bin/bash

rm -f /var/run/process_responsibility_salt-minion.pid
#touch /var/run/process_responsibility_salt-minion.pid

case $1 in
  up)
   echo "UP"
   ;;
  down)
   echo "DOWN"
   ;;
  *)
   echo "Wrong argument: $1"
   exit 1
   ;;
esac

docker-compose $1 -d --remove-orphans
salt-key -A -y
