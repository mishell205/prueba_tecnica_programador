<?php

// Solicitar al usuario que ingrese un número
echo "Por favor, ingresa un número: ";
$numero = (int) readline();

// Validar que el número sea un entero positivo
if ($numero < 0 || !is_numeric($numero) || floor($numero) != $numero) {
    echo "Por favor, ingresa un número entero positivo.\n";
    exit();
}

// Calcular el factorial
$factorial = 1;
for ($i = $numero; $i >= 1; $i--) {
    $factorial *= $i;
}

// Imprimir el resultado
echo "El factorial de $numero es: $factorial\n";
