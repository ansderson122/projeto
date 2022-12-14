#!/bin/bash

echo -e "$red Exercício 6$f Elaborar um script que apresente ao usuário um menu com as seguintes opções: 1 - Exibir status da utilização das partições do sistema; (df -h) 2 - Exibir relação de usuário logados; (who) 3 - Exibir data/hora; (date) 4 - Sair.Informe sua opção:As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair). Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário. Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem Opção não disponível. Tente outra vez." 
echo -e "$red Exemplo1:$f
    1 - Exibir status da utilização das partições do sistema;(df -h)
    2 - Exibir relação de usuário logados; (who)
    3 - Exibir data/hora; (date) 
    4 - Sair.  
    
    $gre Informe sua opção: 1 $f
    /dev/hda3 9.9G 5.4G 4.16 57% / /dev/hda1 23M 6.5M 16M 30% /boot /dev/hda6 236 1.8G 20G 9% /home /dev/hda5 5.OG 3.2G 1.6G 68% /var shmfs 125M 0 125M 0% /dev/shm
"

a=0
while [ $a -ne 4 ] ; do
    echo -e "$cyan\n1 - Exibir status da utilização das partições do sistema"
    echo -e "2 - Exibir relação de usuário logados"
    echo -e "3 - Exibir data/hora"
    echo -e "4 - Sair $f"
    echo -e -n $gre"Informe sua opção: $f"
    read a
    if [ $a -eq 1 ];then 
        echo $(df -h)
    elif [ $a -eq 2 ]; then
        echo $(who)
    elif [ $a -eq 3 ]; then
        echo $(date)
    else 
        echo "Erro: tente outra vez"    
    fi
done
echo
