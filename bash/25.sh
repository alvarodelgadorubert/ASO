#!/bin/bash

echo "--- Últimos usuarios que iniciaron sesión con dirección IP ---"

# Ejecuta 'last' para obtener el historial de sesiones.
# Luego, usa 'egrep' (grep -E) para buscar líneas que contengan una IP.
# La expresión regular busca un patrón de 4 bloques de números separados por puntos.
last | egrep '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
