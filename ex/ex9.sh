#!/bin/bash

 echo -e "$redN Exercício 9$f Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, como resultado, essas palavras ordenadas.\n$red Exemplo:$f ordena_palavras.sh casa bola abacaxi\n abacaxi bola casa\n"

echo -e -n $gre"Digite a lista: "$f
read a
v=$(echo $a | tr ' ' '\n' | sort -n | tr '\n' ' ')
echo -e "$blu$v$f\n"