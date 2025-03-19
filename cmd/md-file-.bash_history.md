cd
sudo apt update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install xfce4 -y
sudo apt-get install xfce4-goodies -y
sudo apt-get install xrdp -y
sudo adduser xrdp ssl-cert
sudo adduser dietpi ssl-cert
sudo systemctl xrdp status
/etc/init.d/xrdp status
/etc/init.d/xrdp restart
exit
