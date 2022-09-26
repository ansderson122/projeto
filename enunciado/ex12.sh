#!/bin/bash

 echo "Exercício 12 Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home. Exemplo: 
    klayson => /home/klayson alunolab => /home/alunolab root => /root"

read -p "Digite o parâmetro: " a
echo $(bash ex/ex12.sh $a)
echo