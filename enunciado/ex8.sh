#!/bin/bash

echo "Exercício 8 Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo."

 read -p "Digite o parâmetro: " a
 echo $(bash ex/ex8.sh $a)
 echo