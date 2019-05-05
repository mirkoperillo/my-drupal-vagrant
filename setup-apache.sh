#!/bin/bash

apt-get -q update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/www /var/www
fi

a2enmod rewrite
apache2ctl restart

