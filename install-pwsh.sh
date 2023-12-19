#!/bin/bash

sudo apt-get update

# install powershell 6
sudo snap install powershell --classic

# install powershell 7
# sudo snap install powershell-preview --classic

# replace sshd_config
cat << EOF | sudo tee /etc/ssh/sshd_config
PasswordAuthentication yes
PubKeyAuthentication yes
ChallengeResponseAuthentication no
UsePAM yes
X11Forwarding yes
PrintMotd no
AcceptEnv LANG LC_*
Subsystem       sftp    /usr/lib/openssh/sftp-server
Subsystem       powershell /snap/powershell/current/opt/powershell/pwsh -sshs -NoLogo -NoProfile
ClientAliveInterval 120
EOF


sudo service sshd restart
