#!/usr/bin/env bash
set -e

# Additional operating system packages
packages="awslogs jq aws-cfn-bootstrap ntp iptables-services"

# Exclude docker and ecs agent from the update
sudo yum -y -x docker\* -x ecs\* update

echo "### Installing extra packages: $packages ###"
sudo yum -y install $packages
