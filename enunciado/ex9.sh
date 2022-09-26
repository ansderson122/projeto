#!/bin/bash

 echo "Exercício 9 Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, como resultado, essas palavras ordenadas. Exemplo: 
    ordena_palavras.sh casa bola abacaxi abacaxi bola casa"

read -p "Digite o parâmetro: " a
echo $(bash ex/ex9.sh $a)
echo