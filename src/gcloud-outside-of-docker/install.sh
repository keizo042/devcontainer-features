#!/bin/sh
set -e

echo "Activating feature 'kubeconfig-outside-of-docker'"

mkdir -p /home/$_REMOTE_USER/.config
ln -s /media/home/.config/gcloud /home/$_REMOTE_USER/.config/
