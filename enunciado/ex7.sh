#!/bin/bash
echo "Exercício 7 Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas. 
    Cuamala. 
    Exemplo: 
    aulas_teti.sh 2008/02/07 2008/07/05 1,3 11/02/2008, 13/02/2008, 18/02/2008, 20/02/2008, 25/02/2008, 27/02/2008, 03/03/2008, 05/03/2008,.."

read -p "Digite os parâmetros: " a
echo $(bash ex/ex7.sh $a)
echo