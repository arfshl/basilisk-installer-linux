#!/bin/sh
echo "Installing Mozilla Firefox..."
sudo wget https://dl.basilisk-browser.org/basilisk-20250220145130.linux-x86_64-gtk3.tar.xz -P /opt
cd /opt
sudo tar xvf /opt/basilisk*.tar.*
sudo chmod -R 755 /opt/basilisk*
ln -s /opt/basilisk/basilisk /usr/local/bin/basilisk
sudo wget https://github.com/arfshl/basilisk-installer-linux/raw/main/basilisk.desktop -P /usr/local/share/applications
rm /opt/basilisk*.tar.* install.sh
basilisk
