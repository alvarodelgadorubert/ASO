Clear-Host
[int]$numero = Read-Host "Introduce un número entero positivo"
$resultado = @()

for ($i = 1; $i -le $numero; $i++) {
    if ($i % 2 -ne 0) {
        $resultado += $i
    }
}

Write-Host ($resultado -join ", ")