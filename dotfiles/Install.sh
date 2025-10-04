#!/bin/bash

read -p "You want to install the packages? (y/n) " installpackages

if [[ "$installpackages" =~ ^[Yy]$ ]]; then
    yay -S waybar-cava fastfetch cava kitty starship swww nerd-fonts-jetbrains-mono
else
    echo "Install script canceled"
    exit 0
fi

read -p "Do you want to copy the .config files to your .config? (y/n) " copyconfig

if [[ "$copyconfig" =~ ^[Yy]$ ]]; then
    mkdir -p ~/.config
    cp ~/Hyprland-Miku-Rice/dotfiles/.config/* ~/.config/
    echo "Configs copied!"
else
    echo "Config copy canceled"
fi
read -p "Do you want to copy the .bashrc? (y/n) " copybashrc

if [[ "$copybashrc" =~ ^[Yy]$ ]]; then
    cp ~/Hyprland-Miku-Rice/dotfiles/.bashrc ~/.bashrc
    echo "Sourcing new .bashrc..."
    source ~/.bashrc
else
    echo ".bashrc copy canceled."
fi
