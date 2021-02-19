#!/bin/bash

CURRENTSHELL=$(echo $SHELL)
DESIREDSHELL="/usr/bin/zsh"
if [ $CURRENTSHELL != $DESIREDSHELL ]; then

    # Network
    read -p "Configure Network Shares [y/n]: " -n 1 -r
    echo   
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo ./installers/network_mount.sh
    fi
 
    # Fonts
    read -p "Install patched Fonts [y/n]: " -n 1 -r
    echo    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo ./installers/install_fontpacks.sh
    fi

    # Tilix
    read -p "Install patched Fonts [y/n]: " -n 1 -r
    echo    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo ./installers/install_tilix.sh    
    fi

    # ZSH
    read -p "Install patched Fonts [y/n]: " -n 1 -r
    echo    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo ./installers/install_zsh.sh
    fi

else
    # Oh-My-Zsg
    read -p "Install patched Fonts [y/n]: " -n 1 -r
    echo    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo ./installers/install_oh_my_zsh.sh
    fi
fi