Clear-Host
[int]$edad = Read-Host "¿Cuántos años tienes?"

for ($i = 1; $i -le $edad; $i++) {
    Write-Host "Has cumplido $i años"
}