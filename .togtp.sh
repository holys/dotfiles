#!/bin/sh
# toggle touchpad synatics
# run "$ xinput " to get your touchpad's id  ,for me it is 13 


CURR_STATE=`xinput --list-props 13 | grep 'Device Enabled'| rev | cut -c 1`
NEW_STATE=$((1-$CURR_STATE))


xinput set-prop 13 "Device Enabled" $NEW_STATE
