#!/usr/bin/env bash

sudo chown -R vagrant /home/vagrant
sudo chgrp -R vagrant /home/vagrant

# install payload
cp /vagrant/test.zip /home/vagrant/test.zip
cd /home/vagrant
unzip test.zip

# blah
sudo groupadd -g 2002 hacking-group
sudo useradd cyberfool --gid 2002
sudo useradd thehacker --gid 0

# move ui files
sudo chown -R vagrant /home/vagrant/Desktop
sudo cp /home/vagrant/ScoreReport.html /home/vagrant/Desktop/ScoreReport.html


# configure ui
sudo sh /vagrant/install.sh
rm *.html *.cfg install.sh *.png sed5Qp7Ss payload

echo "DONE!"
