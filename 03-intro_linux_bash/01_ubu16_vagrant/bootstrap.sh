#!/usr/bin/env bash

sudo chown -R vagrant /home/vagrant
sudo chgrp -R vagrant /home/vagrant

#
# Update & install dependencies
#
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y unzip python-tk

# install payload
cp /vagrant/test.zip /home/vagrant/test.zip
cd /home/vagrant
unzip test.zip
mkdir .evil
mv /home/vagrant/*.mxd /home/vagrant/.evil

# move ui files
mv ScoreReport.hml /home/vagrant/Desktop
mv Question1.txt /home/vagrant/Desktop

# configure ui
python /home/vagrant/CSEL/configurator.py
sudo sh /home/vagrant/CSEL/install.sh
rm -rf CSEL
rm sed5Qp7Ss

echo "DONE!"
