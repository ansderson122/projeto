#!/bin/bash

 echo -e "$red Exercício 4 $f Elaborar um script que receba um número como parâmetro e imprima todos os números pares de O até o número informado como parâmetro."
 echo -e "$red Exemplo:$f ./meuscript.sh 10 
    0
    2
    4
    6 
    8 
    10 
"

read -p "Digite um número: " a

valor=$(bash erros/numeroInteiro.sh)
a=$(echo $valor)
for i in $(seq 1 1 $a); do 


    if [ $(($i%2)) -eq 0 ]; then
        echo -e $blu"$i"$f
    fi

done
echo
