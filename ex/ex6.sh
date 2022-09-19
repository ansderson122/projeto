#!/bin/bash
a=0
while [ $a -ne 4 ];
do
echo "1 - Exibir status da utilização das partições do sistema"
echo "2 - Exibir relação de usuário logados"
echo "3 - Exibir data/hora"
echo "4 - Sair"

read a
if [ $a -eq 1 ];then 
    echo $(df -h)
elif [ $a -eq 2 ]; then
    echo $(who)
elif [ $a -eq 3 ]; then
    echo $(date)
fi

done