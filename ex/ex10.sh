#!/bin/bash
s="continua"
while test "$s" != "sair" ; do
    read -p "Informe a palavra a ser incluida na lista ordenada: " palavra
    
    if [ "$palavra" = "sair" ] ; then
        s="sair"
        continue 
    fi
    
    lista="$lista $palavra"
    echo $lista | tr ' ' '\n' | sort -n | tr '\n' '\n'; echo 
done