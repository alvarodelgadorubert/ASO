#!/bin/bash

# --- Constantes de la Red (proporcionadas por el usuario) ---
OCTETO_BASE="10.112.2"
RED_ID="10.112.2.64"
BROADCAST_ID="10.112.2.127"
MASCARA="255.255.255.192"
RANGO_INICIO=64
RANGO_FIN=127

# Se calcula el CIDR a partir de la máscara 255.255.255.192
CIDR="/26"
NOMBRE_RED="10.112.2.64${CIDR}"

# Función: Obtener y mostrar los detalles de la red
function obtener_detalles_red() {
    echo "--- Detalles y Tipo de Red ---"
    echo "Rango CIDR:    ${NOMBRE_RED}"
    echo "ID de Red:     ${RED_ID}"
    echo "Broadcast:     ${BROADCAST_ID}"
    echo "Máscara:       ${MASCARA}"
    echo "Hosts Usables: ${OCTETO_BASE}.$((RANGO_INICIO + 1)) - ${OCTETO_BASE}.$((RANGO_FIN - 1))"
    echo
}

# Función: Escanear una IP con ping y determinar si está libre
function escanear_ip() {
    local ip=$1
    local estado="LIBRE (OFF)"
    local ping_options="-c 1 -W 1" # 1 paquete, tiempo de espera de 1 segundo

    # Redirige la salida de ping a /dev/null
    if ping ${ping_options} "$ip" &> /dev/null; then
        estado="OCUPADA (ON)"
    fi

    # Marcar IDs especiales
    if [ "$ip" == "$RED_ID" ]; then
        estado="ID de Red"
    elif [ "$ip" == "$BROADCAST_ID" ]; then
        estado="Broadcast"
    fi

    printf "%-15s | %s\n" "$ip" "$estado"
}

# Función: Generar el informe completo
function generar_informe() {
    obtener_detalles_red

    echo "--- Listado de IPs y Estado ---"
    printf "%-15s | %s\n" "Dirección IP" "Estado"
    echo "-----------------+--------------"

    # Itera sobre el rango del cuarto octeto (de 64 a 127)
    for i in $(seq $RANGO_INICIO $RANGO_FIN); do
        ip_a_escanear="${OCTETO_BASE}.$i"
        escanear_ip "$ip_a_escanear"
    done
    
    echo "-----------------+--------------"
    echo "FIN del Informe."
}

# --- Inicio del Script ---
generar_informe
