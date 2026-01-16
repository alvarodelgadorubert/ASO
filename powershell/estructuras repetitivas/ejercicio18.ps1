Clear-Host
do {
    $entrada = Read-Host "Escribe algo (escribe 'salir' para terminar)"
    if ($entrada -ne "salir") {
        Write-Host "Eco: $entrada"
    }
} while ($entrada -ne "salir")

Write-Host "Programa finalizado."