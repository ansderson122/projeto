#!/bin/bash
echo "Exercício 13 Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado. Exemplo: /bin/sh => 17 usuários. 
    "

lis="$(cat /etc/passwd | cut -d ":" -f7 | sort | uniq -c | sort -n | tr '\n' '\n')"
echo $lis
echo