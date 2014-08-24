#!/bin/bash

mkdir -p /home/vagrant/.ssh
wget 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chown -Rf vagrant. /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/authorized_keys
