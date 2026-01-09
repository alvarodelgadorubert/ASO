Clear-Host
[int]$horas = Read-Host "Escribe tu numero de horas trabajadas"
[int]$coste = Read-Host "Escribe el coste por hora trabajada"
$salario = $horas * $coste

Write-Host "Tu salario es de" $salario "euros"