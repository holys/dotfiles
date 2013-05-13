#!/bin/sh
sleep 5
#cd $HOME/dotfiles/goagent_bak/local/
#sh -c "python proxy.py"
#cd $HOME/dotfiles/shadowsocks
#sh -c "python local.py"
if [ -d ~/dotfiles/goagent219 ]
then
   /usr/bin/python2  ~/dotfiles/goagent_new/local/proxy.py
fi
