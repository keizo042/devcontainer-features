#!/bin/sh
set -e

echo "Activating feature 'kubeconfig-outside-of-docker'"


ln -s /media/home/.kube /home/$_REMOTE_USER/
