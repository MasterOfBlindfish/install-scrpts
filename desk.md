How to Install and Configure xrdp on debian 12 bookworm

#opcacore.com

#!/bin/bash

``` bash
adduser dietpi
usermod -aG sudo dietpi
```

Grant sudo without password
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers

su dietpi

#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install curl xrdp xfce4 xfce4-goodies -y
#sudo curl -fsSL https://tailscale.com/install.sh | sh
#sudo apt-get install language-pack-kde-de -y


