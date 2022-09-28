#!/bin/bash
echo -e "$redN Exercício 10$f Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra sair, o script é finalizado.$red\nExemplo:$f ordena_palavras_interativamente.sh\n$blu Informe a palavra a ser incluída na lista ordenada:$f casa\n casa\n$blu Informe a palavra a ser incluída na lista ordenada:$f abacaxi\n abacaxi casa\n$blu Informe a palavra a ser incluída na lista ordenada:$f bola\n abacaxi bola casa\n$blu Informe a palavra a ser incluída na lista ordenada:$f sair  \n"

s="continua"
while test "$s" != "sair" ; do
    echo -e -n $gre"Informe a palavra a ser incluida na lista ordenada: "
    read palavra
    echo -e $f
    if [ "$palavra" = "sair" ] ; then
        s="sair"
        continue 
    fi
    
    lista="$lista $palavra"
    echo $lista | tr ' ' '\n' | sort -n | tr '\n' ' '; 
done

echo