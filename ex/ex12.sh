#!/bin/bash

echo "Exercício 12 Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home. Exemplo: 
    klayson => /home/klayson alunolab => /home/alunolab root => /root"

# /etc/passwd etc.txt 
usr=$(cat /etc/passwd | cut -d ":" -f1)
dir=$(cat /etc/passwd | cut -d ":" -f6)

pas(){
    # $1 é con
    con=1
    for i in $dir ; do 
        if [ $1 -eq $con ] ; then 
            echo $i
            return 
        fi
        con=$(($con+1))
    done
}

res=1
for i in $usr ; do 
    echo "$i => $(pas $res)"
    res=$(($res+1))
done 
echo
