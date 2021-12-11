#!/bin/bash

# Enable ssh password authentication
echo "Enable ssh password authentication"
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl reload sshd

# Set Root password
echo "Set root password"
echo -e "admin\nadmin" | passwd root >/dev/null 2>&1

# Install docker 
# This method doesn't work in Ubuntu 22:04
# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh
# systemctl start docker

# Install docker
apt update --yes && \
apt install docker.io --yes && \ 
systemctl start docker.service && \ 
systemctl enable docker.service && \ 
systemctl status docker.service