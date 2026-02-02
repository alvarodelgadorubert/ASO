$personalOU = "OU=PERSONAL,OU=Empresa,DC=empresa,DC=local"

$usuariosPersonal = Get-ADUser -Filter * -SearchBase $personalOU

foreach ($u in $usuariosPersonal) {
    $samAccount = $u.SamAccountName
    $profilePath = "\\Empresa-dc1\Empresa_users$\" + $samAccount
    
    Set-ADUser -Identity $samAccount -ProfilePath $profilePath
}