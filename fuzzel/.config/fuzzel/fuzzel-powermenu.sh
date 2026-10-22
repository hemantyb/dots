#!/bin/bash

SELECTION=$(echo -e " Lock\n Log Out\n Suspend\n Reboot\n Shutdown" | fuzzel \
  --dmenu \
  --hide-prompt \
  --minimal-lines \
  --width=15 \
  --lines=5 \
  --placeholder="System actions..." \
  --selection-radius=6)

case "$SELECTION" in
    *Lock)
        swaylock
        ;;
    *"Log Out")
        loginctl terminate-user "$USER"
        ;;
    *Suspend)
        systemctl suspend
        ;;
    *Reboot)
        systemctl reboot
        ;;
    *Shutdown)
        systemctl poweroff
        ;;
esac

