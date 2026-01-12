$ruta = Read-Host "Introduce la ruta del fichero o carpeta"

if (Test-Path -Path $ruta) {
    Write-Host "El elemento existe en la ruta: $ruta"
} else {
    Write-Host "El elemento NO existe."
}