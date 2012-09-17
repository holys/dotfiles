#!/bin/sh

CURR_STATE=`xinput --list-props 15 | grep 'Device Enabled'| rev | cut -c 1`
NEW_STATE=$((1-$CURR_STATE))


xinput set-prop 15 "Device Enabled" $NEW_STATE
