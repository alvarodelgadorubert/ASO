#!/bin/bash

output_file="archivos_peligrosos.txt"

echo "Buscando archivos con permisos de escritura para cualquier usuario..."

# El permiso para 'otros' (el último bloque en los permisos) incluye escritura 'w'
# Si el permiso 'w' está en la posición 9 del listado 'ls -l', es modificable por 'otros'.
# El permiso se comprueba buscando el bit 'o+w' (escritura para otros).
# El permiso 0002 corresponde al permiso de escritura para otros.

# Encuentra archivos de tipo 'f' (ficheros) con permisos 'o+w' y guarda la ruta exacta.
find / -type f -perm /002 > "$output_file" 2>/dev/null

echo "Búsqueda completada."
echo "La lista de archivos con permisos de escritura para 'otros' se ha guardado en '$output_file'."
