#!/bin/bash
 echo "Exercício 4 Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 
    O até o número informado como parâmetro. Exemplo: 
    ./meuscript.sh 10 0246 8 10 "

read -p "Digite um número" a
echo $(bash ex/ex4.sh $a)
echo