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

#Ending
echo "Completed"
