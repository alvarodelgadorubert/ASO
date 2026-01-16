[int]$n = Read-Host "Introduce un número entero positivo"
$impares = (1..$n | Where-Object { $_ % 2 -ne 0 }) -join ", "
Write-Host $impares