#!/bin/bash

# Get default audio output node
default_sink=$(wpctl status | grep 'Default Sink' | awk -F ':' '{print $2}' | xargs)

# Get volume (extract the number only, e.g., 0.42 = 42%)
volume=$(wpctl get-volume 48 | grep -oP '\d+\.\d+' | awk '{printf "%.0f", $1 * 100}')

# Check if it's muted
muted=$(wpctl get-volume 48 | grep -q MUTED && echo true || echo false)

# Set icon and message
if [ "$muted" = true ]; then
    icon="audio-volume-muted"
    message="Muted"
else
    if [ "$volume" -lt 30 ]; then
        icon="audio-volume-low"
    elif [ "$volume" -lt 70 ]; then
        icon="audio-volume-medium"
    else
        icon="audio-volume-high"
    fi
    message="Volume: ${volume}%"
fi

# Send notification
swaync-client -s "volume-notification" -t "Volume" -m "$message" -i "$icon"
