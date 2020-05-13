#!/usr/bin/env bash

sudo chown -R vagrant /home/vagrant
sudo chgrp -R vagrant /home/vagrant

# install payload
cp /vagrant/test.zip /home/vagrant/test.zip
cd /home/vagrant
unzip test.zip

# files
mkdir .hackers_here
mv /home/vagrant/*.mxd /home/vagrant/.hackers_here

# add users 
sudo groupadd -g 2020 hacking-group
sudo adduser lordjarjar --gid 2020 
echo 'lordjarjar:lordjarjar' | sudo chpasswd
sudo adduser drax --gid 0 
echo 'drax:drax' | sudo chpasswd

# move ui files
sudo chown -R vagrant /home/vagrant/Desktop
mv /home/vagrant/Question1.txt /home/vagrant/Desktop/Question1.txt

# configure ui
sudo sh /home/vagrant/install.sh
rm -rf *.png *.cfg *.sh payload

echo "DONE!"
