#!/bin/bash

# Comprueba que se haya pasado exactamente un parámetro (el nombre del fichero)
if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <nombre_del_fichero>"
  exit 1
fi

nombre_fichero="$1"

# Función: existe
# Verifica si el fichero existe y cambia sus permisos si es positivo.
function existe() {
  local fichero="$1"

  # Verifica si el fichero existe (-f)
  if [ -f "$fichero" ]; then
    echo "El fichero '$fichero' existe."

    # Cambia los permisos: añade permiso de ejecución (x) solo al propietario (u)
    # y elimina el permiso de ejecución para el resto (g-x, o-x).
    chmod u+x,g-x,o-x "$fichero"
    
    echo "Permisos de '$fichero' cambiados: ejecutable para el propietario, no para el resto."
  else
    echo "El fichero '$fichero' NO existe."
  fi
}

# Llama a la función 'existe' con el parámetro pasado al script
existe "$nombre_fichero"
