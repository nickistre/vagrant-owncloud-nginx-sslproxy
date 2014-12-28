#!/usr/bin/env bash

# Run as Root!

# Setups nginx as an ssl proxy to the owncloud system


rm /etc/nginx/sites-enabled/default

find /vagrant/nginx/ -type f -exec ln -s {} /etc/nginx/sites-enabled/ \;

sudo service nginx reload