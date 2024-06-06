<?php

// Función para calcular los coeficientes binomiales usando recursividad
function binomialCoefficient($n, $k) {
    if ($k == 0 || $k == $n) {
        return 1;
    }
    return binomialCoefficient($n - 1, $k - 1) + binomialCoefficient($n - 1, $k);
}

// Función para expandir el binomio (a + b)^n
function expandBinomial($n) {
    $result = [];

    for ($k = 0; $k <= $n; $k++) {
        $coefficient = binomialCoefficient($n, $k);
        $a_exp = $n - $k;
        $b_exp = $k;
        
        $term = "";
        if ($coefficient != 1) {
            $term .= $coefficient;
        }
        if ($a_exp > 0) {
            $term .= "a";
            if ($a_exp > 1) {
                $term .= "^" . $a_exp;
            }
        }
        if ($b_exp > 0) {
            if ($a_exp > 0) {
                $term .= "b";
            } else {
                $term .= "b";
            }
            if ($b_exp > 1) {
                $term .= "^" . $b_exp;
            }
        }

        $result[] = $term;
    }

    return implode(" + ", $result);
}

// Solicitar al usuario el valor de la potencia
echo "Ingrese la potencia a la que desea elevar el binomio (a + b): ";
$n = (int) readline();

// Generar y mostrar la expansión del binomio
echo "(a + b)^$n = " . expandBinomial($n) . "\n";
