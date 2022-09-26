#!/bin/bash
echo "Exercício 11 Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros: Exemplo: 
    calculadora.sh 2 + 2 
    calculadora.sh 2*3 
    calculadora.sh 8 / 4 
    calculadora.sh 7-2"

read -p "Digite o parâmetro: " a
echo $(bash ex/ex11.sh $a)
echo