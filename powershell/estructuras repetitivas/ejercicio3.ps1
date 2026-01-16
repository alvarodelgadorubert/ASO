[int]$n = Read-Host "Introduce un número entero positivo"
$cuentaAtras = ($n..0) -join ", "
Write-Host $cuentaAtras