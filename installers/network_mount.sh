#!/bin/bash
echo "----------------------------"
echo "|Configuring network mounts |"
echo "----------------------------"
sudo apt update
sudo apt install cifs-utils -y

echo ''
echo -n 'Storage IP: '
read STORAGEIP
echo -n 'Username: '
read USERNAME
echo -n 'Password: '
read -s PASSWORD


printf "username=$USERNAME\npassword=$PASSWORD" > ~/.smbcredentials

sudo printf "//STORAGEIP/media /media/$USER/media  cifs credentials=/home/$USER/.smbcredentials,iocharset=utf8,gid=1000,vers=2.0,uid=1000,file_mode=0777,dir_mode=0777 0 0\n" >> /etc/fstab
sudo printf "//STORAGEIP/backup /media/$USER/backup  cifs credentials=/home/$USER/.smbcredentials,iocharset=utf8,gid=1000,vers=2.0,uid=1000,file_mode=0777,dir_mode=0777 0 0" >> /etc/fstab

sudo mkdir /media/$USER/media
sudo mkdir /media/$USER/backup

sudo mount -a
