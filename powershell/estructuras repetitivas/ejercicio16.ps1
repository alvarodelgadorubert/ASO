Clear-Host
[int]$inicio = Read-Host "Introduce un número para la cuenta atrás"
$cuenta = @()

for ($i = $inicio; $i -ge 0; $i--) {
    $cuenta += $i
}

Write-Host ($cuenta -join ", ")