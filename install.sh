#!/bin/sh 

ln -s  $HOME/dotfiles/LVDS-VGA.sh  $HOME/.screenlayout/ 
ln -s  $HOME/dotfiles/Xresources $HOME/.Xresources 
ln -s $HOME/dotfiles/config_0 $HOME/.tilda/ 
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.orig
sudo cp   $HOME/dotfiles/mirrorlist /etc/pacman.d/mirrorlist  
sudo cp -rf $HOME/dotfiles/openvpn /etc
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf 
ln -s $HOME/dotfiles/xinitrc $HOME/.xinitrc 
ln -s $HOME/dotfiles/rc.lua $HOME/.config/awesome/rc.lua 
ln -s $HOME/dotfiles/theme.lua $HOME/.config/awesome/default/theme.lua 
