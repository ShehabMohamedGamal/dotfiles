#!/bin/bash

WALLPAPER_DIR="$HOME/dotfiles/wallpapers_catppuccin"

CHOICE=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \) | \
while read -r IMG; do
    # Show basename as label, use full path as icon
    BASENAME=$(basename "$IMG")
    echo -en "$IMG\0icon\x1f$IMG\n"
done | rofi -dmenu -i -p " Wallpaper" -show-icons -theme "/home/shehab/.config/rofi/catppuccin-wallpaper.rasi")

# If something was chosen, set it
if [ -n "$CHOICE" ]; then
    swww img --transition-fps 120 "$CHOICE"
fi

