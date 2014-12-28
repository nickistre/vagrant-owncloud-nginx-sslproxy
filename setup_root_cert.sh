#!/usr/bin/env bash

# Run as Root!

# Sets up the root CA file in the system

cp /vagrant/root-certs/* /usr/local/share/ca-certificates/
update-ca-certificates
