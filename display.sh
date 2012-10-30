#!/usr/bin/env bash

CURR_STATE=`xrandr -q |grep VGA-0 | awk '{print $3}' | wc -m`
#echo $CURR_STATE
if [ $CURR_STATE = '16'  ]
    then `xrandr --output VGA-0 --off`
    else `xrandr --output VGA-0  --mode 1024x768 --right-of LVDS`

fi
