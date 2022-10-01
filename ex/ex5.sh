#!/bin/bash

echo -e "$red Exercício 5$f Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes. \n 
$red Exemplo 1:$f ./meuscript.sh /etc/fstab 
    O arquivo /etc/fstab existe e tem 861 bytes.
    
    $red Exemplo 2:$f ./meuscript.sh /etc/arqqualquer
     O arquivo /etc/arqqualquer não existe.
"
    
read -p "Digite um nome de arquivo: " a
 
if [ -e $a ]; then 
    echo "O arquivo '$a' existe e tem $( stat -c %s $a) bytes."
    else 
    echo "O arquivo '$a' nao existe."
fi
echo