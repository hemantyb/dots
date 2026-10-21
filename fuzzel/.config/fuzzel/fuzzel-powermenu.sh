#!/bin/bash

# Define the options with Nerd Font icons (optional)
SELECTION=$(echo -e " Lock\n Log Out\n Suspend\n Reboot\n Shutdown" | fuzzel \
  --dmenu \
  --hide-prompt \
  --minimal-lines \
  --width=15 \
  --lines=5 \
  --placeholder="System actions..." \
  --selection-radius=6)

# Execute the corresponding command based on selection
case "$SELECTION" in
    *Lock)
        # Swap with your locker (e.g., swaylock, hyprlock, waylock)
        loginctl lock-session || swaylock || hyprlock
        ;;
    *"Log Out")
        # Systemd/Wayland generic exit or compositor specific
        loginctl terminate-user "$USER" || swaymsg exit || hyprctl dispatch exit
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

