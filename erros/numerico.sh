#!/bin/bash
mc(){
re='^[+-]?[0-9]+([.][0-9]+)?$'

if [[ $1 =~ $re && $2 =~ $re ]] ; then

	echo 1

else

	echo 0

fi
}

f=$(mc $1 $2)

while [ $f -ne 1 ] ; do

    
    read -p "Digite o primeiro parâmetro: aaaaa" a
    read -p "Digite o segundo parâmetro: aaaaa" b
    f=$(mc $a $b)
    echo "Digite um numero!"
done

