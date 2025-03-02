#!/bin/bash

# Mensaje del commit basado en la fecha y hora
mensaje="Progreso guardado: $(date '+%Y-%m-%d %H:%M:%S')"

# Ir al directorio del juego (ajústalo si es necesario)
cd /home/alejandro/.wine/drive_c/'GOG Games'/'ULTRAKILL Demo'/Saves || exit

# Verificar cambios
git status

# Agregar cambios
git add .

# Hacer commit con la fecha
git commit -m "$mensaje"

# Subir al repositorio
git push origin main

echo "commit: "$mensaje" realizado con exito."
echo "puede verlo en : https://github.com/ElverGarrica/ULTRAKILL-BACKUP.git"

