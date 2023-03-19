#!/bin/bash

# Get the current Ubuntu release
current_release=$(lsb_release -rs)

# Get the latest minor version
latest_release=$(do-release-upgrade -c -q 2>&1 | grep 'New release' | awk '{print $4}')

# Check if the current release is older than the latest release
if [[ "$current_release" != "$latest_release" ]]; then

  # Update Ubuntu to the latest minor version
  sudo do-release-upgrade -f DistUpgradeViewNonInteractive

else
  echo "Ubuntu is already on the latest minor version"
fi


# Check if Ansible is already installed
if ! [ -x "$(command -v ansible)" ]; then

  # Update the package list and install dependencies
  sudo apt-get update
  sudo apt-get install -y software-properties-common

  # Add the Ansible PPA
  sudo apt-add-repository ppa:ansible/ansible

  # Update the package list again
  sudo apt-get update

  # Install Ansible
  sudo apt-get install -y ansible
fi
