#!/bin/bash
cd /tmp
curl -L https://www.opscode.com/chef/install.sh | sudo bash
rm -f /tmp/chef*deb
