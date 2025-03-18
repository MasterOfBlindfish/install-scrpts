Here’s your CMS Install Script for Cloud Systems as a Markdown guide:


# CMS Install Script for Cloud Systems

## General Setup Instructions
Below are multiple scripts designed to configure and set up various cloud-related systems efficiently. Each section includes instructions on how to use the provided scripts.

---

## CMS / Install Script Cloud

```bash
#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install kubuntu-desktop -y
sudo apt-get install language-pack-kde-de -y

# Grant sudo without password
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
```

### Instructions to Run the Script
1. Copy the entire script.
2. In the SSH window, type: `nano buildscript.sh`.
3. Paste the script into the editor (use `SHIFT+INSERT`).
4. Save with `CTRL+O`, press `ENTER`, and exit with `CTRL+X`.
5. Make the script executable: `sudo chmod +x buildscript.sh`.
6. Run the script: `./buildscript.sh`.

---

## Tools Installation

```bash
#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

sudo apt-get install xrdp -y
sudo apt-get install htop -y
sudo apt-get install stacer -y
sudo apt-get install gedit -y

# Set passwords
sudo passwd root
sudo passwd dietpi
```

### Instructions to Run the Script
1. Copy the entire script.
2. In the SSH window, type: `nano buildscript.sh`.
3. Paste the script into the editor (use `SHIFT+INSERT`).
4. Save with `CTRL+O`, press `ENTER`, and exit with `CTRL+X`.
5. Make the script executable: `sudo chmod +x buildscript.sh`.
6. Run the script: `./buildscript.sh`.

---

## Tailscale Setup

```bash
#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

# Create user and configure sudo access
sudo adduser dietpi
sudo usermod -a -G sudo dietpi
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers

# Install and start Tailscale
echo "Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
echo "Starting Tailscale..."
tailscale up --accept-dns=false
```

### Instructions to Run the Script
1. Copy the entire script.
2. In the SSH window, type: `nano buildscript.sh`.
3. Paste the script into the editor (use `SHIFT+INSERT`).
4. Save with `CTRL+O`, press `ENTER`, and exit with `CTRL+X`.
5. Make the script executable: `sudo chmod +x buildscript.sh`.
6. Run the script: `./buildscript.sh`.

---

## Desktop and Ports Configuration

```bash
#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install plasma-desktop -y
sudo apt-get install language-pack-kde-de -y
sudo apt-get install xrdp -y

# Configure ports
sudo sed -i 's/#Port 22/Port 62222/g' /etc/ssh/sshd_config
sudo sed -i 's/port=3389/port=63389/g' /etc/xrdp/xrdp.ini

# Security settings
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow in on tailscale0 to any port 22
sudo ufw allow in on tailscale0 to any port 3389
sudo ufw allow in on tailscale0 to any port 1714:1764 proto udp
sudo ufw allow in on tailscale0 to any port 1714:1764 proto tcp
sudo ufw enable

# Additional tools
sudo apt-get install htop -y
sudo apt-get install stacer -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install gedit -y
sudo apt-get install gufw -y

# Set passwords
sudo passwd root
sudo passwd dietpi

sudo reboot
```

### Instructions to Run the Script
1. Copy the entire script.
2. In the SSH window, type: `nano buildscript.sh`.
3. Paste the script into the editor (use `SHIFT+INSERT`).
4. Save with `CTRL+O`, press `ENTER`, and exit with `CTRL+X`.
5. Make the script executable: `sudo chmod +x buildscript.sh`.
6. Run the script: `./buildscript.sh`.

---

### Additional Desktop Installation Commands
```bash
sudo apt install tasksel
sudo tasksel
sudo apt install xrdp
sudo rm /usr/share/polkit-1/actions/org.freedesktop.color.policy

wget -c https://1drv.ms/u/s!AmhpP_9Tqo5RgfRF0mVgA69fpwQrPw?e=xIUc9z -O - | sudo tar -xz
```

---

This document has been enhanced to include clear sections, proper formatting, and consistent instructions.

