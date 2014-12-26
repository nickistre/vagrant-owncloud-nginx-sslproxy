#!/usr/bin/env bash

# Run as Root!

# Setups nginx as an ssl proxy to the owncloud system

mkdir -p /opt/ssl/
cp /tmp/owncloudssl.vagrant.dev.crt /opt/ssl/
cp /tmp/owncloudssl.vagrant.dev.key /opt/ssl/

cp /tmp/sslproxy /etc/nginx/sites-available/sslproxy

ln -s /etc/nginx/sites-available/sslproxy /etc/nginx/sites-enabled/sslproxy

rm /etc/nginx/sites-available/default

sudo service nginx reload