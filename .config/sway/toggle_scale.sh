#!/bin/bash

# Get the current scale value for eDP-1 using swaymsg and jq
CURRENT_SCALE=$(swaymsg -t get_outputs | jq -r '.[] | select(.name=="eDP-1") | .scale')

# Check if the current scale is "2.0" and toggle to "1.0", otherwise set to "2.0"
if [[ "$CURRENT_SCALE" == "2.0" ]]; then
    swaymsg output eDP-1 scale 1
    swaymsg input "1452:835:Apple_Internal_Keyboard_/_Trackpad" pointer_accel 0.5
else
    swaymsg output eDP-1 scale 2
    swaymsg input "1452:835:Apple_Internal_Keyboard_/_Trackpad" pointer_accel 0.25
fi
