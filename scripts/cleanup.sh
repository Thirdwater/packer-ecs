#!/usr/bin/env bash
set -e

echo "### Performing final clean-up tasks ###"
sudo service docker stop
sudo chkconfig docker off
sudo rm -f /var/log/docker /var/log/ecs/*
sudo rm -Rf /var/run/docker.sock

# Remove docker network database
sudo rm -rf /var/lib/docker/network

# Remove docker0 interface if exists
sudo ip link del docker0 || true
