Clear-Host
[int]$num1 = Read-Host "Dame el primer numero"
[int]$num2 = Read-Host "Dame el segundo numero"
Write-Host "****** CALCULADORA ********"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
[int]$opcion = Read-Host "¿Qué desea hacer? Elige una opción"

if ($opcion -eq 1) {
$suma = $num1 + $num2
Write-Host "El resultado de la suma es $suma"
} elseif ($opcion -eq 2) {
$resta = $num1 - $num2
Write-Host "El resultado de la resta es $resta"
} elseif ($opcion -eq 3) {
$multiplicacion = $num1 * $num2
Write-Host "El resultado de la multiplicacion es $multiplicacion"
} else {
$division = $num1 / $num2
Write-Host "El resultado de la division es $division"
}