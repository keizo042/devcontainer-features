#!/bin/sh
set -e

echo "Activating feature 'telepresence-oss'"

echo "The provided greeting is: $GREETING"

# The 'install.sh' entrypoint script is always executed as the root user.
#
# These following environment variables are passed in by the dev container CLI.
# These may be useful in instances where the context of the final 
# remoteUser or containerUser is useful.
# For more details, see https://containers.dev/implementors/features#user-env-var
echo "The effective dev container remoteUser is '$_REMOTE_USER'"
echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

echo "The effective dev container containerUser is '$_CONTAINER_USER'"
echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"


apt-get update -y 
apt-get install -y iptables sshfs 

curl -fL https://app.getambassador.io/download/tel2oss/releases/download/v2.17.0/telepresence-darwin-amd64 -o /usr/local/bin/telepresence

chmod a+x /usr/local/bin/telepresence

