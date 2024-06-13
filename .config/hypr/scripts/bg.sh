#!/bin/bash

WALLPAPER_DIR="/home/tom/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Wallpaper directory not found: $WALLPAPER_DIR"
    exit 1
fi

wallpapers=("$WALLPAPER_DIR"/*)

if [ ${#wallpapers[@]} -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

selected_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
echo $selected_wallpaper
hyprctl hyprpaper wallpaper "DP-1,$selected_wallpaper"
hyprctl hyprpaper wallpaper "HDMI-A-1,$selected_wallpaper"
