#!/usr/bin/env bash

CURR_STATE=`xrandr -q |grep VGA-0 | awk '{print $3}' | wc -m`
#echo $CURR_STATE
if [ $CURR_STATE = '8'  ]
    then 
       eval  `xrandr --output VGA-0 --off`
       eval  `cat ~/.fehbg`
    else
      eval  `xrandr --output LVDS --mode 1366x768 --output VGA-0 --mode 1024x768 --right-of LVDS `
      eval  `nitrogen --restore`
fi
