#!/bin/bash

# Get current brightness as a percentage
brightness=$(brightnessctl | grep -oP '\(\K[0-9]+(?=%\))')

# Set icon based on brightness level
if [ "$brightness" -lt 30 ]; then
    icon="display-brightness-low"
elif [ "$brightness" -lt 70 ]; then
    icon="display-brightness-medium"
else
    icon="display-brightness-high"
fi

# Notification message
message="Brightness: ${brightness}%"

# Send notification
swaync-client -s "brightness-notification" -t "Brightness" -m "$message" -i "$icon"
