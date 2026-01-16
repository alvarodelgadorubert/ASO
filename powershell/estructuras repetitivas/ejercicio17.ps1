Clear-Host
[int]$n = Read-Host "Introduce un número para ver su tabla de multiplicar"

Write-Host "--- Tabla del $n ---"
for ($i = 1; $i -le 10; $i++) {
    $prod = $n * $i
    Write-Host "$n x $i = $prod"
}