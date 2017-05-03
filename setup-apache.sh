#!/bin/bash

apt-get -q update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/www /var/www
fi

perl -0 -i.bak  -p -e 's/\s*<Directory \/var\/www\/>\n\s+Options\sIndexes\sFollowSymLinks\sMultiViews\n\s+AllowOverride\sNone/\n        <Directory \/var\/www\/>\n                Options Indexes FollowSymLinks MultiViews\n                AllowOverride All/g;' /etc/apache2/sites-enabled/000-default
