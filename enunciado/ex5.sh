#!/bin/bash

echo "Exercício 5 Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes. Exemplo 1: 
    ./meuscript.sh /etc/fstab O arquivo /etc/fstab existe e tem 861 bytes. Exemplo 2: ./meuscript.sh /etc/arqqualquer O arquivo /etc/arqqualquer não existe"
    
 read -p "Digite um nome de arquivo" a
 echo $(bash ex/ex5.sh $a)
 echo
