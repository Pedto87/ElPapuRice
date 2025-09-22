export LANG=es_ES.UTF-8
DIA=$(date +%-d)   # Día actual, sin ceros ni espacios

HEADER=$(cal | head -n1)       # Solo título, en vez de head -n2 para ahorrar espacio
DIAS_SEM=$(cal | head -n2 | tail -n1)
CUERPO=$(cal | tail -n +3)

# Resalta el día actual con formato "html" para usar <span> en waybar
CUERPO_RESALTADO=$(echo "$CUERPO" | sed -E "s/\b$DIA\b/<span color='orange'><b>$DIA<\/b><\/span>/g")

echo -e "$HEADER\n$DIAS_SEM\n$CUERPO_RESALTADO"