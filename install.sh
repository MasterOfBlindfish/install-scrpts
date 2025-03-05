#!/bin/bash


#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
apt-get update
apt-get upgrade -y

apt-get install curl xrdp xfce4 xfce4-goodies -y
#sudo curl -fsSL https://tailscale.com/install.sh | sh
#sudo apt-get install language-pack-kde-de -y

adduser dietpi
usermod -aG sudo dietpi

# Grant sudo without password
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
