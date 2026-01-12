Clear-Host

$bonoBase = 2400

[double]$puntuacion = Read-Host "Introduce tu puntuación (0.0, 0.4 o 0.6 en adelante)"

if ($puntuacion -eq 0.0) {
    $nivel = "Inaceptable"
} elseif ($puntuacion -eq 0.4) {
    $nivel = "Aceptable"
} elseif ($puntuacion -ge 0.6) {
    $nivel = "Meritorio"
} else {
    $nivel = $null
}

if ($null -ne $nivel) {
    $dinero = $puntuacion * $bonoBase
    Write-Host "--- RESULTADO DE EVALUACIÓN ---"
    Write-Host "Nivel de rendimiento: $nivel"
    Write-Host "Cantidad de dinero a recibir: $dinero€"
} else {
    Write-Host "Error: La puntuación introducida no es válida."
}