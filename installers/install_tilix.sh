#!/bin/bash
echo "----------------------------"
echo "|     installing tiliz      |"
echo "----------------------------"
sudo apt update
# Install tilix
sudo apt install tilix -y


# Backup
# dconf dump /com/gexperts/Tilix/ > /media/$USER/backup/Pop_Config/tilix/tilix.dconf

# Restore
dconf load /com/gexperts/Tilix/ < /media/$USER/backup/Pop_Config/tilix/tilix.dconf