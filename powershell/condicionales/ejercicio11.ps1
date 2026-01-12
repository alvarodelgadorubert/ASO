Clear-Host

[int]$edad = Read-Host "Introduce la edad del cliente"

if ($edad -lt 4) {
    $precio = 0
    Write-Host "El cliente entra gratis."
} elseif ($edad -ge 4 -and $edad -le 18) {
    $precio = 5
    Write-Host "El precio de la entrada es: $precio€"
} else {
    $precio = 10
    Write-Host "El precio de la entrada es: $precio€"
}