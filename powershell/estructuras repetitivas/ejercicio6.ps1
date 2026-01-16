$numeroSecreto = 42 # Número fijo
$acertado = $false

do {
    [int]$intento = Read-Host "Adivina el número (0-100)"
    if ($intento -lt $numeroSecreto) {
        Write-Host "Es mayor..."
    } elseif ($intento -gt $numeroSecreto) {
        Write-Host "Es menor..."
    } else {
        Write-Host "¡Enhorabuena! Has acertado."
        $acertado = $true
    }
} until ($acertado)