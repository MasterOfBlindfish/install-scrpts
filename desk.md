
How to Install and Configure xrdp on debian 12 bookworm

<br><br>

#opcacore.com

<br>

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

<br>

To extract `.7z` files on a Debian-based system, you can use the `p7zip` package. Here's how you can do it:

1. **Install p7zip**:
   ```bash
   sudo apt update
   sudo apt install p7zip-full
   ```

2. **Navigate to the directory** containing your `.7z` file:
   ```bash
   cd /path/to/your/file
   ```

3. **Extract the `.7z` file**:
   ```bash
   7z x yourfile.7z
   ```
   - Replace `yourfile.7z` with the actual name of your file.
   - The `x` option ensures that the directory structure inside the archive is preserved.

4. **Verify the extracted contents**:
   After extraction, you can list the files in the directory to confirm:
   ```bash
   ls
   ```

Let me know if you need further assistance! 😊

<br>

Install Desktop Environment

``` bash
sudo apt-get install curl xfce4 xfce4-goodies xrdp -y
#sudo curl -fsSL https://tailscale.com/install.sh | sh
#sudo apt-get install language-pack-kde-de -y
sudo apt-get install language-pack-de -y
sudo rm /usr/share/polkit-1/actions/org.freedesktop.color.policy
```

