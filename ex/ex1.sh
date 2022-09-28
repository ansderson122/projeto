#!/bin/bash

echo -e -n "$redN Exercício 1$f "
echo "Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações: - O maior dos números recebidos; - O somatório dos números recebidos."
echo -e "$red Exemplo: $f./meuscript.sh 23 14\n O maior número é 23.\n A soma dos números é 37. \n"

valores=$(bash erros/numerico.sh)
a=$(echo $valores | cut -d ' ' -f 1)
b=$(echo $valores | cut -d ' ' -f 2)

if [ $a -gt $b ] ; then
	echo "O maior numero é $a"
	else
	echo "O maior numero é $b"
fi
echo "A soma dos numero $(($a+$b))"