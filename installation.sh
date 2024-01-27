#!/bin/sh
#KDE Plasma Installation
echo "Updating the packages"
sudo pacman -Syu
echo "Installing plasma"
sudo pacman -S plasma-meta
pacman -S --needed xorg sddm
sudo systemctl enable sddm
sudo systemctl enable NetworkManager

#Other Programs
echo "Installing Dolphin(Filesystemmanager)"
sudo pacman -S dolphin
echo "Installing kitty(Terminalemulator)"
sudo pacman -S kitty


#Yay-Installaion
echo "Installing git"
sudo pacman -S git
echo "Installing yay"
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#Install Discord(Electron)
echo "Installing Discord"
yay -Syu discord_arch_electron

#Installing VSCodium
echo "Installing VSCodium"
yay -S vscodium-bin

#Ending
echo "Completed"