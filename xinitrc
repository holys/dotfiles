#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

eval `dbus-launch --sh-syntax --exit-with-session`

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
killall fcitx
fcitx & 


sh $HOME/dotfiles/proxy.sh &
xbindkeys &
#nohup sudo /home/david/Gone/rjsupplicant/rjsupplicant.sh >> /home/david/Gone/rjsupplicant/log.txt 2>&1 &
#$HOME/env/bin/supervisord 
#pushd wiki_me &&nohup  gollum  --port 45678 &
#exec ck-launch-session gnome-session
#exec ck-launch-session startkde
# exec startxfce4
# ...or the Window Manager of your choice
#exec dbus-launch awesome
#xterm
#exec awesome
exec i3 
