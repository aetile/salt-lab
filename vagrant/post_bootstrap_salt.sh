#!/bin/bash
KEY_PATH=/srv/salt/vagrant/tmp
PKI_PATH=/etc/salt/pki/master/minions

if [ "$1" = "" ]; then
  echo "Missing node name. Exiting"
  exit 1
else
  echo "Node: $1"
fi

cd $KEY_PATH
rm -f $1.*

exit 0
