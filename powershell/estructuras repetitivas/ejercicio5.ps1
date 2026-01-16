[int]$num = Read-Host "Introduce el número para ver su tabla"
for ($i = 1; $i -le 10; $i++) {
    $resultado = $num * $i
    Write-Host "$num x $i = $resultado"
}