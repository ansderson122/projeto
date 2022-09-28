#!/bin/bash

echo -e "$red Exercício 5$redf Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes. \n 
$red Exemplo 1:$redf ./meuscript.sh /etc/fstab \n O arquivo /etc/fstab existe e tem 861 bytes. \n $redd Exemplo 2:$redf ./meuscript.sh /etc/arqqualquer\n O arquivo /etc/arqqualquer não existe\n"
    
read -p "Digite um nome de arquivo" a
 
if [ -e $a ]; then 
    echo "O arquivo $a existe e tem $( stat -c %s $a) bytes."
    else 
    echo "O arquivo $a nao existe."
fi
echo