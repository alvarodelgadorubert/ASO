Clear-Host
[int]$edad = Read-Host "Dame tu edad"

if ($edad -ge 18) {
Write-Host "Eres mayor de edad"
} else {
Write-Host "No eres mayor de edad"
}