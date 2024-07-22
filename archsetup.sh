#!/bin/bash
if [ `id -u` -ne 0 ]
  then echo "Run this script as root or using sudo."
  exit
fi

echo "Enter a hostname: "
read hostname

echo "Updating Arch.."
pacman -Syu


echo "Installing packages.."
IndexedArray=(git neovim zsh neofetch tmux alacritty)

for i in "${IndexedArray[@]}"; do
    echo "$i";

    if pacman -Qi "$i" &> /dev/null; then
        echo "Package $i Exists"
    else
        pacman -S $i --noconfirm
    fi
done


echo "Copying config files.."
cp -r /home/$hostname/dotfiles/.* /home/$hostname/


echo "Installation complete."
exit 0
