#!/bin/bash
echo -e "$redN Exercício 10$f Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra sair, o script é finalizado.

$red Exemplo:$f ordena_palavras_interativamente.sh
$blu Informe a palavra a ser incluída na lista ordenada:$f casa
    casa
$blu Informe a palavra a ser incluída na lista ordenada:$f abacaxi
    abacaxi casa
$blu Informe a palavra a ser incluída na lista ordenada:$f bola
    abacaxi bola casa
$blu Informe a palavra a ser incluída na lista ordenada:$f sair  
"

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