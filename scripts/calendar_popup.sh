export LANG=es_ES.UTF-8
HOY=$(date "+%e")
HEADER=$(cal | head -n2)
CUERPO=$(cal | tail -n +3)
DIA=$(echo "$HOY" | sed 's/ //')
# Resalta el día actual con flechas
CUERPO_RESALTADO=$(echo "$CUERPO" | sed -E "s/(^| )$DIA( |$)/\1⮞$DIA⮜\2/g")
# Compacta y alinea el calendario al centro (ancho 20)
CALENDARIO=$(echo -e "$HEADER\n$CUERPO_RESALTADO" | awk '{printf "%20s\n", $0}')

# Llama a wofi con el tamaño ideal para que quede justito (ajustar si es necesario)
echo -e "$CALENDARIO" | wofi --dmenu --prompt="" --width=220 --height=140 --location=center --style=~/calendario-style.css