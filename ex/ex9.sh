#!/bin/bash

echo "Exercício 9 Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, como resultado, essas palavras ordenadas. Exemplo: 
    ordena_palavras.sh casa bola abacaxi abacaxi bola casa"

read -p "Digite a lista: " a
echo $a | tr ' ' '\n' | sort -n | tr '\n' '\n'; echo 
echo
