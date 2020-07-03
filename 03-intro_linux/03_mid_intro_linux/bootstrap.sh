#!/usr/bin/env bash

sudo chown -R vagrant /home/vagrant
sudo chgrp -R vagrant /home/vagrant

# install payload
mkdir /home/vagrant/CSEL
cp /vagrant/test.zip /home/vagrant/CSEL/test.zip
cd /home/vagrant/CSEL
unzip test.zip

# files
mkdir /home/vagrant/.hackers_here
cp /home/vagrant/CSEL/*.mxd /home/vagrant/.hackers_here

# add users 
sudo groupadd -g 2020 hacking-group
sudo adduser lordjarjar --gid 2020 
echo 'lordjarjar:lordjarjar' | sudo chpasswd
sudo adduser drax --gid 0 
echo 'drax:drax' | sudo chpasswd

# configure ui
sudo ./install.sh
cd /home/vagrant
rm -rf CSEL

echo "DONE!"
