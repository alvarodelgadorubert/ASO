[int]$altura = Read-Host "Introduce la altura del triángulo"

for ($i = 1; $i -le $altura; $i++) {
    Write-Host ("*" * $i)
}