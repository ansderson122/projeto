#!/bin/bash
mc(){
re='^[0-9]+$'
if [[ $1 =~ $re ]] ; then
	echo 1
else
	echo 0
fi
}

read -p "Digite o parâmetro: " a

f=$(mc $a)

while [ $f -ne 1 ] ; do
    read -p "Digite um numero inteiro positivo: " a
    f=$(mc $a)
done

echo $a
