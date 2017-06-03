#!/bin/bash -ex

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root." 1>&2
	exit 1
fi

#
# Install an SSH server to allow for remote access, so any further
# configuration using Ansible can be done remotely. The SSH server
# config will be modified using Ansible (using one of the provided
# Ansible playbooks in this repository) to a more secure configuration.
#
apt-get update
apt-get install -y openssh-server

#
# In order to use Ansible to configure the system, we first need to
# ensure Ansible is installed on the system. By default, it might not
# be installed. Additionally, we don't want to use the version contained
# in the default Ubuntu repositories, so we add the Ansible specific
# repository to ensure the version we require is available.
#
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible
