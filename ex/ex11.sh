#!/bin/bash
echo -e "$redN Exercício 11$f Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros:

$red Exemplo:$f
    calculadora.sh 2+2 
    calculadora.sh 2*3 
    calculadora.sh 8/4 
    calculadora.sh 7-2
"

read -p "Digite o parâmetro: " a
operacao=$(($a))
echo $operacao