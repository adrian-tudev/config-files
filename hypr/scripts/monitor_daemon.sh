#!/usr/bin/env bash

SOCK="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

# run once at startup
~/.config/hypr/scripts/monitor_auto.sh

# listen for monitor events
socat - UNIX-CONNECT:$SOCK | while read -r line; do
    if echo "$line" | grep -q "monitoradded\|monitorremoved"; then
        ~/.config/hypr/scripts/monitor_auto.sh
    fi
done
