#!/bin/bash
echo "Exercício 3 Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um. Se for diretório, deve escrever '(dir)' ao lado do diretório. Exemplo 1: 
    ./meuscript.sh /tmp arq1 arq2 dir1 (dir) xara dir2 (dir) "
 
read -p "Digite um diretório: " a


dir=$(ls -1 $a)
for i in $dir ; do 
    if [ -d $i ] ; then
        echo "$i (dir)"
        else
        echo $i
    fi
done 
echo
