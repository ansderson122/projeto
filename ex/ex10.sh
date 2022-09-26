#!/bin/bash
echo "Exercício 10 Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra "sair", o script é finalizado. Exemplo: 
    ordena_palavras_interativamente.sh Informe a palavra a ser incluída na lista ordenada: casa casa Informe a palavra a ser incluída na lista ordenada: abacaxi abacaxi casa Informe a palavra a ser incluída na lista ordenada: bola abacaxi bola casa Informe a palavra a ser incluída na lista ordenada: sair "

s="continua"
while test "$s" != "sair" ; do
    read -p "Informe a palavra a ser incluida na lista ordenada: " palavra
    
    if [ "$palavra" = "sair" ] ; then
        s="sair"
        continue 
    fi
    
    lista="$lista $palavra"
    echo $lista | tr ' ' '\n' | sort -n | tr '\n' '\n'; 
    echo " "
done

echo