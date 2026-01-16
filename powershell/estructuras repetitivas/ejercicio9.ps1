$password_correcta = "contrasena"
$password_usuario = ""

while ($password_usuario -ne $password_correcta) {
    $password_usuario = Read-Host "Introduce la contraseña"
    
    if ($password_usuario -ne $password_correcta) {
        Write-Host "Contraseña incorrecta, intenta de nuevo."
    }
}

Write-Host "¡Acceso concedido!"