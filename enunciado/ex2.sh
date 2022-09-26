#!/bin/bash
echo "Exercício 2 Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas). 
    Exemplo 1: 
    ./meuscript.sh Informe o nome do usuário a ser consultado: Bill Bill não é um usuário cadastrado. 
    Exemplo 2: 
    ./meuscript.sh Informe o nome do usuário a ser consultado: Linus Linus é um usuário cadastrado."

    read -p "Digite um nome de usuário: " a
    echo $(bash ex/ex2.sh $a)
    echo