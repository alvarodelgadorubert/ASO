Clear-Host
[int]$num1 = Read-Host "Dame un numero"
[int]$num2 = Read-Host "Dame otro numero"

if ($num1 -gt $num2) {
Write-Host "El primer numero es mayor que el segundo"
} elseif ($num1 -lt $num2) {
Write-Host "El primer numero es menor que el segundo"
} else {
Write-Host "El primer numero es igual al segundo"
}