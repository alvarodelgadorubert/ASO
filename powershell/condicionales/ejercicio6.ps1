$entrada = Read-Host "Introduce una ruta para verificar si es directorio"

if (Test-Path -Path $entrada) {
$item = Get-Item -Path $entrada
    if ($item.PSIsContainer) {
        Write-Host "Es un directorio. Listando contenido recursivo..."
        Get-ChildItem -Path $entrada -Recurse
    } else {
        Write-Host "La ruta introducida es un archivo, no un directorio."
    }

} else {
    Write-Host "La ruta no es válida o no existe."
}