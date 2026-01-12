Clear-Host
[double]$renta = Read-Host "Dame tu renta anual"
if ($renta -lt 10000) {
    $tipo = "5%"
} elseif ($renta -ge 10000 -and $renta -lt 20000) {
    $tipo = "15%"
} elseif ($renta -ge 20000 -and $renta -lt 35000) {
    $tipo = "20%"
} elseif ($renta -ge 35000 -and $renta -lt 60000) {
    $tipo = "30%"
} else {
    $tipo = "45%"
}

Write-Host "Para una renta de $renta€, el tipo impositivo que te corresponde es del $tipo"