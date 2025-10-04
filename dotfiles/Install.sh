read -p " you want to install the packages? (y/n) " installpackages

if [["$installpackages" =~ ^[Yy]$]]; then
 yay -S waybar fastfetch cava kitty starship swww
else
 echo "Install script canceled"
fi
else
