Clear-Host
[int]$numero = Read-Host "Dame un numero"

if ($numero % 2 -eq 0) {
Write-Host "El número es par"
} else {
Write-Host "El número es impar"
}