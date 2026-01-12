Clear-Host
$nombre = "Di tu nombre"
$sexo = "Di tu sexo (M es mujer, H es hombre)"

$nombreMayus = $nombre.ToUpper()
$sexoMayus = $sexo.ToUpper()

if (($sexo -eq "M" -and $nombreMayus -lt "M") -or ($sexoMayus -eq "H" -and $nombreMayus -gt "N")) {
$grupo = "A"
} else {
$grupo = "B"
}

Write-Host "Hola $nombre, te corresponde el GRUPO $grupo"