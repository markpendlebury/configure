#!/bin/bash
echo "----------------------------"
echo "|   installing oh my zsh    |"
echo "----------------------------"
# oh my zsh config
sudo cp -r /media/$USER/backup/Pop_Config/.oh-my-zsh/ ~/
# Powerlevel10K zsh config
sudo cp /media/$USER/backup/Pop_Config/.p10k.zsh ~/
# Zsh config
sudo cp /media/$USER/backup/Pop_Config/.zshrc ~/
# custom aliases
sudo cp /media/$USER/backup/Pop_Config/.alias ~/
