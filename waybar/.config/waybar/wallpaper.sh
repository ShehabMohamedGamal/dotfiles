#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/dotfiles/wallpapers_catppuccin"


# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Apply the selected wallpaper
swww img --transition-fps 120 "$WALLPAPER"
