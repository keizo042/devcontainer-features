#!/bin/sh
set -e

echo "Activating feature 'kubeconfig-outside-of-docker'"


ln -s /var/tmp/home/.kube /home/$_CONTAINER_USER
