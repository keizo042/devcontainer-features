#!/bin/sh
set -e

echo "Activating feature 'kubeconfig-outside-of-docker'"


apt update -y
apt install -y fswatch rsync
