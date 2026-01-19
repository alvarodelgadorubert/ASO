function Crear-Usuario {
    param (
        $nombre,
        $apellido,
        $departamento
    )
    Write-Host ">> Creando usuario: $nombre $apellido en el departamento de $departamento..."
}

$rutaCsv = "usuarios.csv"

if (Test-Path $rutaCsv) {
    $listaUsuarios = Import-Csv -Path $rutaCsv -Delimiter ","

    foreach ($user in $listaUsuarios) {
        Crear-Usuario -nombre $user.nombre -apellido $user.apellido -departamento $user.departamento
    }
    Write-Host "`nProceso finalizado correctamente."
} else {
    Write-Host "Error: No se encuentra el archivo $rutaCsv"
}