[int]$n = Read-Host "Introduce la altura del triángulo (número de filas)"

for ($i = 1; $i -le $n; $i++) {
    $linea = @()
    
    $inicio = (2 * $i) - 1
    
    for ($j = $inicio; $j -ge 1; $j -= 2) {
        $linea += $j
    }
    
    Write-Host ($linea -join " ")
}