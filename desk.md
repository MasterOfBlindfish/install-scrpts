
How to Install and Configure xrdp on debian 12 bookworm

<br>

#opcacore.com





---

#!/bin/bash

``` bash
adduser dietpi
usermod -aG sudo dietpi
```

---

Grant sudo without password

``` bash
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers

su dietpi

#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo apt-get update -y
sudo apt-get upgrade -y
```

---

Install Desktop Environment

``` bash
sudo apt-get install curl xfce4 xfce4-goodies xrdp 7z-full-y
#sudo curl -fsSL https://tailscale.com/install.sh | sh
#sudo apt-get install language-pack-kde-de -y
sudo apt-get install language-pack-de -y
sudo rm /usr/share/polkit-1/actions/org.freedesktop.color.policy
```

