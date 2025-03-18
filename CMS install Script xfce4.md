# CMS Install Script für Cloud-Systeme mit XFCE4

## Allgemeine Anweisungen
Diese Anleitung hilft Ihnen dabei, verschiedene cloudbezogene Systeme mit XFCE4 effizient einzurichten. Die folgenden Skripte beinhalten spezifische Konfigurationen.

---

## XFCE4-Installationsskript

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
sudo apt-get install xfce4 -y
sudo apt-get install xfce4-goodies -y
sudo apt-get install language-pack-de -y

# Sudo ohne Passwort gewähren
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
```

### Anweisungen zur Ausführung
1. Kopieren Sie das Skript.
2. Öffnen Sie das SSH-Terminal und geben Sie `nano buildscript.sh` ein.
3. Fügen Sie das Skript in den Editor ein (mit `SHIFT+INSERT`).
4. Speichern Sie mit `CTRL+O`, drücken Sie `ENTER` und verlassen Sie mit `CTRL+X`.
5. Machen Sie das Skript ausführbar: `sudo chmod +x buildscript.sh`.
6. Führen Sie das Skript aus: `./buildscript.sh`.

---

## Tools-Installation

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
sudo apt-get install p7zip-full -y
# sudo apt-get install stacer -y
# sudo apt-get install gedit -y

# Passwörter setzen
# sudo passwd root
# sudo passwd dietpi
```

### Anweisungen zur Ausführung
1. Kopieren Sie das Skript.
2. Öffnen Sie das SSH-Terminal und geben Sie `nano buildscript.sh` ein.
3. Fügen Sie das Skript in den Editor ein (mit `SHIFT+INSERT`).
4. Speichern Sie mit `CTRL+O`, drücken Sie `ENTER` und verlassen Sie mit `CTRL+X`.
5. Machen Sie das Skript ausführbar: `sudo chmod +x buildscript.sh`.
6. Führen Sie das Skript aus: `./buildscript.sh`.

---

## Tailscale-Setup

```bash
#!/bin/bash

function run-cmd () {
  echo "About to run: $1"
  read -t 600 -p "Press enter to execute: $1"
  $1
  echo
}

# Benutzer erstellen und Sudo-Berechtigung konfigurieren
sudo adduser dietpi
sudo usermod -a -G sudo dietpi
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers

# Tailscale installieren und starten
echo "Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
echo "Starting Tailscale..."
tailscale up --accept-dns=false
```

### Anweisungen zur Ausführung
1. Kopieren Sie das Skript.
2. Öffnen Sie das SSH-Terminal und geben Sie `nano buildscript.sh` ein.
3. Fügen Sie das Skript in den Editor ein (mit `SHIFT+INSERT`).
4. Speichern Sie mit `CTRL+O`, drücken Sie `ENTER` und verlassen Sie mit `CTRL+X`.
5. Machen Sie das Skript ausführbar: `sudo chmod +x buildscript.sh`.
6. Führen Sie das Skript aus: `./buildscript.sh`.

---

## Desktop- und Port-Konfiguration

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
sudo apt-get install xfce4 -y
sudo apt-get install xfce4-goodies -y
sudo apt-get install xrdp -y

# Ports konfigurieren
sudo sed -i 's/#Port 22/Port 62222/g' /etc/ssh/sshd_config
sudo sed -i 's/port=3389/port=63389/g' /etc/xrdp/xrdp.ini

# Sicherheitseinstellungen
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow in on tailscale0 to any port 22
sudo ufw allow in on tailscale0 to any port 3389
sudo ufw enable

# Weitere Tools
sudo apt-get install htop -y
sudo apt-get install stacer -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install gedit -y
sudo apt-get install gufw -y

# Passwörter setzen
sudo passwd root
sudo passwd dietpi

sudo reboot
```

### Anweisungen zur Ausführung
1. Kopieren Sie das Skript.
2. Öffnen Sie das SSH-Terminal und geben Sie `nano buildscript.sh` ein.
3. Fügen Sie das Skript in den Editor ein (mit `SHIFT+INSERT`).
4. Speichern Sie mit `CTRL+O`, drücken Sie `ENTER` und verlassen Sie mit `CTRL+X`.
5. Machen Sie das Skript ausführbar: `sudo chmod +x buildscript.sh`.
6. Führen Sie das Skript aus: `./buildscript.sh`.
