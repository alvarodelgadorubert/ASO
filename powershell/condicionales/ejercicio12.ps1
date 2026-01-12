Clear-Host

$tipo = Read-Host "¿Quieres una pizza vegetariana? (S/N)"

$ingredientesBase = "Tomate, Mozzarella"

if ($tipo.ToUpper() -eq "S") {
    $esVegetariana = $true
    Write-Host "Ingredientes vegetarianos disponibles: Pimiento, Tofu"
    $eleccion = Read-Host "Elige un ingrediente"
} else {
    $esVegetariana = $false
    Write-Host "Ingredientes no vegetarianos disponibles: Peperoni, Jamon, Salmon"
    $eleccion = Read-Host "Elige un ingrediente"
}

Write-Host "--- RESUMEN DE TU PEDIDO ---"
if ($esVegetariana) {
    Write-Host "Tipo de pizza: Vegetariana"
} else {
    Write-Host "Tipo de pizza: No vegetariana"
}
Write-Host "Ingredientes: $ingredientesBase, $eleccion"