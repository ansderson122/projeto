#!/bin/bash
echo "Exercício 7 Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas. 
    Cuamala. 
    Exemplo: 
    aulas_teti.sh 2008/02/07 2008/07/05 1,3 11/02/2008, 13/02/2008, 18/02/2008, 20/02/2008, 25/02/2008, 27/02/2008, 03/03/2008, 05/03/2008,.."

read -p "Digite os data inicial : " data_inicio
read -p "Digite os data final : " data_final
read -p "Digite os dias da semana : " c

echo

# receber duas datas como parametro 
# receber tambem uma sequecia de numeros correspondendo as dias da semana 
dias_semana=$(echo $c | sed -e "s/,/ /g" | tr ' ' '\n' | sort -n | tr '\n' '\n';) # dias_semana é separado por espaço e ordenado em ordem crescente

# os segundos da data de referencia para a data atua 
t=$(date +%s)

# os segundos das datas de referencia para a data que o usuario digitou 
data_inicio_s=$(date -d $data_inicio +"%s")
data_final_s=$(date -d $data_final +"%s")

# distancia das datas para a data atua
# as variaveis data_inicio e data_final vão representa "os segundos + second" para o comando date
data_inicio_s=$(($data_inicio_s-$t))
if [ $data_inicio_s -lt 0 ] ; then #caso seja uma data passada 
    data_inicio_s=$(($data_inicio_s*-1))
    data_inicio="$data_inicio_s second ago" 
    else
    data_inicio="$data_inicio_s second"
fi

data_final_s=$(($data_final_s-$t))
if [ $data_final_s -lt 0 ] ; then #caso seja uma data passada 
    data_final_s=$(($data_final_s*-1))
    data_final="$data_final_s second ago" 
    data_final_s=$(date -d "$data_final" "+%s")
    else
    data_final="$data_final_s second"
    data_final_s=$(date -d "$data_final" "+%s")
fi
# saber o dia da semana da data_incio 
dS=$(date -d "$data_inicio" +"%u")

# função para calcula a quantidade de dia de $1 a $2 
proximoDia(){
    # $1 é o dia da semana incial 
    # $2 é o dia da semana destino 

    pri=$1
    if [ $pri -gt 7 ] ; then
        pri=1
    fi
    if [ $pri -eq $2 ] ; then
        echo $3
        return $3
    fi
    
    num=$(($3+1))
    next=$(($pri+1))
    proximoDia $next $2 $num
}

# p é a quantidade de dias da data de inicio
primeiro_dia=$(echo $dias_semana | cut -d ' ' -f 1)
p=$(proximoDia $dS $primeiro_dia 0)

# dia_atual_s é a quantidade de segundos da data de referencia para aquela que esta sendo trabalhada no loop
dia_atual_s=$data_inicio_s

# dias_semana_qtd é a quantidade de dias da semana digitada pelo usuario
dias_semana_qtd=0
for i in $dias_semana ; do
    dias_semana_qtd=$(($dias_semana_qtd+1))
done


data_print=""
cont=1

while [ $dia_atual_s -lt $data_final_s ] ; do
    res=$(($cont%$dias_semana_qtd)) # res correponde ao index, começando em 1, que sera cortado de dias_semana  
    if [ $res -eq 0 ] ; then
        primeiro_dia=$(echo $dias_semana | cut -d ' ' -f $(($dias_semana_qtd))) # para pega o ultima elemento 
        else
        primeiro_dia=$(echo $dias_semana | cut -d ' ' -f $(($res)))
    fi
    
    segundo_dia=$(echo $dias_semana | cut -d ' ' -f $(($res+1)))
    
   
    data_print="$data_print $(date -d "$data_inicio $p days" "+%d/%m/%Y")"
    dia_atual_s=$(date -d "$data_inicio $p days" "+%s")
    p=$(($p+$(proximoDia $primeiro_dia $segundo_dia 0)))
    cont=$(($cont+1))
   
done

echo $data_print
echo