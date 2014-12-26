#!/usr/bin/env bash

# Run as Root!

# Sets up the root CA file in the system

cp /tmp/root.crt /usr/local/share/ca-certificates
update-ca-certificates
