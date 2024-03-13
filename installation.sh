#!/bin/sh
#KDE Plasma Installation

echo "Updating the packages"
sudo pacman --noconfirm -Syu
echo "Installing plasma"
sudo pacman --noconfirm -S plasma-meta
pacman -S --noconfirm --needed xorg sddm
sudo systemctl enable sddm
sudo systemctl enable NetworkManager

#Other Programs
echo "Installing Dolphin(Filesystemmanager)"
sudo pacman --noconfirm -S dolphin
echo "Installing kitty(Terminalemulator)"
sudo pacman --noconfirm -S kitty
echo "Installing bitwarden"
sudo pacman --noconfirm -S bitwarden
echo "Installing pacdef"
sudo pacman --noconfirm -S pacdef 

#Yay-Installaion
echo "Installing yay"
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#Install Discord(Electron)
echo "Installing Discord"
yay --noconfirm -Syu discord_arch_electron

#Install Librewolf
echo "Installing Librewolf"
yay --noconfirm -Syu librewolf-bin

#Installing VSCodium
echo "Installing VSCodium"
yay --noconfirm -S vscodium-bin

#PHP-Stuff
#Installing asdf
echo "Installing asdf-vm"
yay --noconfirm -S asdf-vm
asdf plugin add asdf-php https://github.com/asdf-community/asdf-php
asdf global php latest

#Installing Minecraft
echo "Installing Minecraft"
yay --noconfirm -S minecraft-launcher

#Installing Element
echo "Installing Element"
yay --noconfirm -S element

#Ending
echo "Completed"
