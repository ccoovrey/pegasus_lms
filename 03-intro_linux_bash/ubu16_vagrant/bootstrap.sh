#!/usr/bin/env bash

sudo chown -R vagrant /home/vagrant
sudo chgrp -R vagrant /home/vagrant

# install payload
cd /vagrant
sudo unzip test.zip

# configure vulnerabilities
sudo useradd cyberfool

# move ui files
sudo cp ScoreReport.html /home/vagrant/Desktop/ScoreReport.html
sudo chown -R vagrant /home/vagrant/Desktop

# configure ui
sudo sh /vagrant/install.sh
rm *.html *.cfg install.sh *.png sed5Qp7Ss payload

echo "DONE!"
