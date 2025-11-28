#!/usr/bin/env bash

# Options
options=" Shutdown
 Reboot
 Suspend
 Lock
󰗽 Logout
Cancel"

chosen="$(echo -e "$options" | rofi -dmenu -p "Power" -i)"

case "$chosen" in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Suspend")
        systemctl suspend
        ;;
    " Lock")
        hyprlock
        ;;
    "󰗽 Logout")
        pkill -KILL -u "$USER"
        ;;
    "Cancel" | *)
        exit 0
        ;;
esac

