Clear-Host
$contrasena_guardada = "contrasena"
$contrasena_dada = Read-Host "Dame la contraseña"
if ($contrasena_guardada -eq $contrasena_dada) {
Write-Host "La contraseña introducida es la misma"
} else {
Write-Host "La contraseña introducida no es la misma"
}