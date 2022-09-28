#!/bin/bash
mc(){
re='^[+-]?[0-9]+([.][0-9]+)?$'
if [[ $1 =~ $re && $2 =~ $re ]] ; then
	echo 1
else
	echo 0
fi
}
read -p "Digite o primeiro parâmetro: " a
read -p "Digite o segundo parâmetro: " b

f=$(mc $a $b)

while [ $f -ne 1 ] ; do
    read -p "Digite o primeiro parâmetro: " a
    read -p "Digite o segundo parâmetro: " b
    f=$(mc $a $b)
done

echo $a
echo $b
