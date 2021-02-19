#!/bin/bash
echo "----------------------------"
echo "|      installing zsh      |"
echo "----------------------------"
sudo apt update 
# INstall zsh
sudo apt install zsh -y
# Change Shell to zsh
chsh -s '/usr/bin/zsh'
# Tell the user we will log out in 5 seconds
for i in {5..01}
do
    tput cup 10 $l
    echo -n "Loging out in $i press ^c to cancel"
    sleep 1
done

echo 'Goodbye!'
pkill -kill -u $USER

echo '-----------------------------------------------------'
echo ' zsh installed and set as default shell'
echo ' Please logout of Pop for the changes to take affect'
echo '-----------------------------------------------------'