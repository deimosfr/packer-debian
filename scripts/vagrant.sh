#!/bin/bash

### WARNING: DO NOT FORGET TO REMOVE IT IF ACCESSIBLE FROM OUTSIDE !!!

function add_vagrant_key {
    homedir=$(su - $1 -c 'echo $HOME')
    mkdir -p $homedir/.ssh
    curl -L 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -o $homedir/.ssh/authorized_keys2
    chown -Rf $1. $homedir/.ssh
    chmod 700 $homedir/.ssh
    chmod 600 $homedir/.ssh/authorized_keys2
}

if [ $(grep -c vagrant /etc/passwd) == 0 ] ; then
    useradd vagrant -m
fi

# Add public key to vagrant user
add_vagrant_key vagrant

