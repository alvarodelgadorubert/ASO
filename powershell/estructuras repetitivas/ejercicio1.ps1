$nombre = Read-Host "Introduce tu nombre"
[int]$veces = Read-Host "Introduce un número entero"

for ($i = 1; $i -le $veces; $i++) {
    Write-Host $nombre
}