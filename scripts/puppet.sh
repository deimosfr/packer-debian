#!/bin/bash

if [ $(facter lsbdistcodename) = 'wheezy' ] ; then
    # Prepare puppetlabs repo
    wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
    dpkg -i puppetlabs-release-wheezy.deb
    rm -f puppetlabs-release-wheezy.deb
    apt-get -y update
fi

# Install puppet
apt-get -y install puppet facter
