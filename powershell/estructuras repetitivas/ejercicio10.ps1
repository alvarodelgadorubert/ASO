$opcion = ""

while ($opcion -ne "x") {
    Write-Host "`n--- MENÚ DE GESTIÓN ---"
    Write-Host "a) Crear carpeta"
    Write-Host "b) Crear fichero nuevo"
    Write-Host "c) Cambiar nombre"
    Write-Host "d) Borrar archivo/carpeta"
    Write-Host "e) Verificar si existe"
    Write-Host "f) Mostrar contenido"
    Write-Host "g) Mostrar fecha y hora"
    Write-Host "x) Salir"
    $opcion = Read-Host "Selecciona una opción"

    switch ($opcion) {
        "a" { 
            $nombre = Read-Host "Nombre de la carpeta"
            New-Item -Path . -Name $nombre -ItemType Directory 
        }
        "b" { 
            $nombre = Read-Host "Nombre del fichero"
            New-Item -Path . -Name $nombre -ItemType File 
        }
        "c" {
            $viejo = Read-Host "Nombre actual"
            $nuevo = Read-Host "Nombre nuevo"
            Rename-Item -Path $viejo -NewName $nuevo
        }
        "d" {
            $nombre = Read-Host "Nombre a borrar"
            Remove-Item -Path $nombre -Recurse
        }
        "e" {
            $ruta = Read-Host "Ruta a verificar"
            Test-Path $ruta
        }
        "f" {
            $ruta = Read-Host "Directorio a listar"
            Get-ChildItem $ruta
        }
        "g" { Get-Date }
        "x" { Write-Host "Saliendo..." }
        Default { Write-Host "Opción no válida" }
    }
}