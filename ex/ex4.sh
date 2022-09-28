#!/bin/bash

echo "Exercício 4 Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 
    O até o número informado como parâmetro. Exemplo: 
    ./meuscript.sh 10 0246 8 10 "


valor=$(bash erros/numeroInteiro.sh)
a=$(echo $valor)
for i in $(seq 1 1 $a); do 

    if [ $(($i%2)) -eq 0 ]; then
        echo $i
    fi

done
echo
