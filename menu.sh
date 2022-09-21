#!/bin/bash
echo $(bash ex/ex1.sh 4 6)
red="\033[0;31m"
redf="\033[0m"
gre="\033[0;32m"
gref="\033[0m"
echo -e "$red penis vermelho $redf"

echo -e "$gre

     _                       _____                                        
 ___/__)    /)     /)       (, /   )                                      
(, /   _   (/_   _(/  _      _/__ / __  ____   __  _  ___   _   _  _   ___
  /   (_(_/_)   (_(__(/_     /     / (_(_)(_/_/ (_(_(_// (_(_(_(__(_(_(_) 
 (_____                   ) /            .-/                              
        )                (_/            (_/                               
$gref
"
echo "

▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒░░░ LISTA 01 ░░░▒▒▒▓▓▓▓▓▓▓▓▓▓▓
▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
"
echo "Informe qual das 12 questões você deseja acessar:" 
read op
if [ $op -eq 1 ]
then

echo "Você escolheu a questão $op"
echo "
Exercício 1 Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações: - O maior dos números recebidos; - O somatório dos números recebidos. Exemplo:  
./meuscript.sh 23 14 O maior número é 23. A soma dos números é 37.
"
echo "Digite o primeiro parâmetro"
read a
echo "Digite o segundo parâmetro"
read b

echo $(bash ex/ex$op.sh $a $b)
fi

if [ $op -eq 2 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 2 Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas). 
Exemplo 1: 
./meuscript.sh Informe o nome do usuário a ser consultado: Bill Bill não é um usuário cadastrado. 
Exemplo 2: 
./meuscript.sh Informe o nome do usuário a ser consultado: Linus Linus é um usuário cadastrado."
echo $(bash ex/ex$op.sh $a $b)
fi
if [ $op -eq 3 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 3 Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um. Se for diretório, deve escrever '(dir)' ao lado do diretório. Exemplo 1: 
./meuscript.sh /tmp arq1 arq2 dir1 (dir) xara dir2 (dir) "

echo "Digite o parâmetro"
read a

echo $(bash ex/ex$op.sh $a $b)
fi
if [ $op -eq 4 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 4 Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 
O até o número informado como parâmetro. Exemplo: 
./meuscript.sh 10 0246 8 10 "
echo "Digite o parâmetro"
read a
echo $(bash ex/ex$op.sh $a)
fi
if [ $op -eq 5 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 5 Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes. Exemplo 1: 
./meuscript.sh /etc/fstab O arquivo /etc/fstab existe e tem 861 bytes. Exemplo 2: ./meuscript.sh /etc/arqqualquer O arquivo /etc/arqqualquer não existe"
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 6 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 6 Elaborar um script que apresente ao usuário um menu com as seguintes opções: 1 - Exibir status da utilização das partições do sistema; (df -h) 2 - Exibir relação de usuário logados; (who) 3 - Exibir data/hora; (date) 
4 - Sair. 
Informe sua opção: 
As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair). Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário. Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem "Opção não disponível. Tente outra vez.". 
Exemplo1: 1 - Exibir status da utilização das partições do sistema; (df -h) 2- Exibir relação de usuário logados; (who) 3 - Exibir data/hora; (date) 4- Sair. 
Informe sua opção: 1 /dev/hda3 9.9G 5.4G 4.16 57% / /dev/hda1 23M 6.5M 16M 30% /boot /dev/hda6 236 1.8G 20G 9% /home /dev/hda5 5.OG 3.2G 1.6G 68% /var shmfs 125M 0 125M 0% /dev/shm 
Exemplo: 1 - Exibir status da utilização das partições do sistema; (df - h) 2- Exibir relação de usuário logados; (who) 3 - Exibir data/hora; (date) 4 - Sair. 
Informe sua opção: 3 Qua Jun 21 23:43:06 BRT 2006"
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 7 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 7 Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas. 
Cuamala. 
Exemplo: 
aulas_teti.sh 2008/02/07 2008/07/05 1,3 11/02/2008, 13/02/2008, 18/02/2008, 20/02/2008, 25/02/2008, 27/02/2008, 03/03/2008, 05/03/2008,.."
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 8 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 8 Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo."
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 9 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 9 Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, como resultado, essas palavras ordenadas. Exemplo: 
ordena_palavras.sh casa bola abacaxi abacaxi bola casa"
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 10 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 10 Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra "sair", o script é finalizado. Exemplo: 
ordena_palavras_interativamente.sh Informe a palavra a ser incluída na lista ordenada: casa casa Informe a palavra a ser incluída na lista ordenada: abacaxi abacaxi casa Informe a palavra a ser incluída na lista ordenada: bola abacaxi bola casa Informe a palavra a ser incluída na lista ordenada: sair "
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 11 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 11 Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros: Exemplo: 
calculadora.sh 2 + 2 
calculadora.sh 2*3 
calculadora.sh 8 / 4 
calculadora.sh 7-2"
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 12 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 12 Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home. Exemplo: 
klayson => /home/klayson alunolab => /home/alunolab root => /root"
echo $(cd ex/ex$op.sh)
fi
if [ $op -eq 12 ]
then

echo "Você escolheu a questão $op"
echo "Exercício 13 Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado. Exemplo: /bin/sh => 17 usuários. 
"
echo $(cd ex/ex$op.sh)
fi
