#!/bin/sh
#installing packages
yes | sudo pacman -S xorg-server lightdm lightdm-webkit2-greeter xmonad xmonad-contrib xmobar dmenu alacritty zsh noto-fonts ttf-hack feh picom neofetch lolcat python python-pip
sudo systemctl enable lightdm

#install python virtualenv command
pip install virtualenv

#install config files
mkdir $HOME/.xmonad && cp xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
#zsh and pure prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
cp .zshrc $HOME/.zshrc
mkdir $HOME/.config
mkdir $HOME/.config/alacritty && cp alacritty.yml $HOME/.config/alacritty/alacritty.yml
mkdir $HOME/.config/picom && cp picom.conf $HOME/.config/picom.conf
cp image.jpg $HOME/image.jpg
cp .xmobarrc $HOME/.xmobarrc
sudo cp lightdm.conf /etc/lightdm/lightdm.conf

#compile xmonad
xmonad --recompile
