#!/bin/bash

# Función para mostrar calendario con rofi
show_calendar() {
    today=$(date +"%Y-%m-%d")
    calendar=$(cal -3)
    rofi -e "$calendar" -theme-str 'window {width: 25%; height: 30%;}' -theme-str 'listview {lines: 10;}'
}

# Función alternativa con yad (más visual)
show_calendar_yad() {
    yad --calendar \
        --title="Calendario" \
        --width=300 \
        --height=300 \
        --no-buttons \
        --close-on-unfocus
}

# Función alternativa con zenity
show_calendar_zenity() {
    zenity --calendar \
        --title="Calendario" \
        --width=300 \
        --height=300 \
        --date-format="%Y-%m-%d"
}

# Ejecutar la función preferida
show_calendar

# Alternativas: descomenta la que prefieras
# show_calendar_yad
# show_calendar_zenity
