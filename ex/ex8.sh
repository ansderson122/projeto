#!bin/bash
echo "Exercício 8 Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo."

read -p "presione enter" 

echo
for i in *.txt;
do
    v=$(cat $i | head -n 1 | cut -d ' ' -f 1)
    mv $i "$v.txt"
done
echo
