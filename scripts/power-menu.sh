#!/bin/bash

options="  Apagar\n  Reiniciar\n  Suspender\n  Bloquear\n🚪  Cerrar sesión\n  Recargar Sway"

chosen=$(echo -e "$options" | wofi --dmenu \
    --prompt " 󰍟   Opciones del Sistema" \
    --style ~/.config/wofi/style.css \
    --location center \  # Cambiado a center
    --width 300 \
    --height 280 \
    --hide-scroll \
    --cache-file /dev/null \
    --insensitive \
    --no-actions)

case "$chosen" in
    "  Apagar") systemctl poweroff ;;
    "  Reiniciar") systemctl reboot ;;
    "  Suspender") systemctl suspend ;;
    "  Bloquear") ~/.config/scripts/lock.sh ;;
    "🚪  Cerrar sesión") swaymsg exit ;;
    "  Recargar Sway") swaymsg reload ;;
    *) exit 1 ;;
esac