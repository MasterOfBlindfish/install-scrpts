#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
apt-get update
apt-get upgrade -y

apt-get install curl xrdp xfce4 xfce4-goodies -y
#sudo curl -fsSL https://tailscale.com/install.sh | sh
#sudo apt-get install language-pack-kde-de -y

# Grant sudo without password
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
