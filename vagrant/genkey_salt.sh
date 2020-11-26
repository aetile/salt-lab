#!/bin/bash
KEY_PATH=/srv/salt/vagrant/tmp
PKI_PATH=/etc/salt/pki/master/minions

if [ "$1" = "" ]; then
  echo "Missing node name. Exiting"
  exit 1
else
  echo "Node: $1"
fi

if [ "$2" = "" ]; then
  echo "Missing PKI path. Exiting"
  exit 1
else
  echo "PKI: $2"
fi


cd $KEY_PATH
rm -f $1.*
salt-key --gen-keys=$1
cp -f $KEY_PATH/$1.pub $2/$1

exit 0
