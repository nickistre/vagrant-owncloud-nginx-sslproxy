#!/usr/bin/env bash

# Run as Root!

# Setups nginx as an ssl proxy to the owncloud system


rm /etc/nginx/sites-enabled/default

cp -f /vagrant/nginx/* /etc/nginx/sites-enabled/

sudo service nginx reload