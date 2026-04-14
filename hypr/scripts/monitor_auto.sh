#!/usr/bin/env bash

# detect monitors
INTERNAL="eDP-1"

# get connected monitors
MONITORS=$(hyprctl monitors -j)

# check if any external monitor is present
EXTERNAL=$(echo "$MONITORS" | grep -E '"name": "(HDMI|DP)' )

if [ -n "$EXTERNAL" ]; then
    # external connected → disable laptop screen
    hyprctl keyword monitor "$INTERNAL,disable"

    # enable all externals
    echo "$MONITORS" | grep '"name"' | cut -d '"' -f4 | while read -r m; do
        if [[ "$m" != "$INTERNAL" ]]; then
            hyprctl keyword monitor "$m,preferred,auto,1"
        fi
    done
else
    # no external → enable laptop screen
    hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
fi
