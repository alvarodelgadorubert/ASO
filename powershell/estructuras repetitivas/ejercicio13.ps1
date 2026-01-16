Clear-Host
$palabra = Read-Host "Introduce una palabra"

for ($i = 1; $i -le 10; $i++) {
    Write-Host "$i: $palabra"
}