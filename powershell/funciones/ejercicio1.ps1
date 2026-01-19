function Calcular-IVA {
    param (
        [double]$precio,
        [double]$iva = 21
    )
    
    $total = $precio + ($precio * ($iva / 100))
    return $total
}

$monto = Read-Host "Introduce el precio sin IVA"
$resultado = Calcular-IVA -precio $monto

Write-Host "El precio final con el 21% de IVA es: $resultado €"