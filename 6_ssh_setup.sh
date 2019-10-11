#!/bin/sh

BOLD='\033[1;30m'
NORMAL='\033[0m'

echo "${BOLD}* SSH setup is started.${NORMAL}";

apt update && apt install -y openssh-server && rm -rf /var/lib/apt/lists/*

mkdir /var/run/sshd
echo 'root:alisher' | chpasswd
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
echo "export VISIBLE=now" >> /etc/profile
service ssh start

