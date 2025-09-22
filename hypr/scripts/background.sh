#!/bin/bash
wallpaper="/home/matias/Imágenes/Aloy horizonte.jpg"
if [[ -f "$wallpaper" ]]; then
    swww init
    swww img "$wallpaper" --transition-type grow --transition-pos 0.854,0.977 --transition-step 255 --transition-fps 60
else
    # Fallback a color sólido
    hyprctl keyword decoration:screen_shader "~/.config/hypr/shaders/solid.frag"
fi
