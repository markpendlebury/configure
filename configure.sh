#!/bin/bash

export CURRENTSHELL=$(echo $SHELL)

if (CURRENTSHELL != '/usr/bin/zsh'); then
    echo 'Begin...'
    sudo ./installers/network_mount.sh
    sudo ./installers/install_fontpacks.sh
    sudo ./installers/install_tilix.sh
    sudo ./installers/install_zsh.sh
else
    echo 'Continuing...'
    sudo ./installers/install_oh_my_zsh.sh
fi