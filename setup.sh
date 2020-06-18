#!/bin/sh
#installing packages
yes | sudo pacman -S xorg-server lightdm lightdm-gtk-greeter xmonad xmonad-contrib xmobar dmenu alacritty zsh noto-fonts ttf-hack feh picom
sudo systemctl enable lightdm

#install config files
mkdir $HOME/.xmonad && cp xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
cp .zshrc $HOME/.zshrc
mkdir $HOME/.config
mkdir $HOME/.config/alacritty && cp alacritty.yml $HOME/.config/alacritty/alacritty.yml

#compile xmonad
xmonad --recompile
