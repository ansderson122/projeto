#!/bin/bash

echo -e -n "$redN Exercício 1$f "
echo "Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações: - O maior dos números recebidos; - O somatório dos números recebidos."
echo -e "$red Exemplo: $f./meuscript.sh 23 14\n O maior número é 23.\n A soma dos números é 37. \n"

read -p "Digite o primeiro parâmetro: " a
read -p "Digite o segundo parâmetro: " b

if [ $1 -gt $2 ] ; then
	echo "O maior numero é $a"
	else
	echo "O maior numero é $b"
fi
echo "A soma dos numero $(($a+$b))"
echo