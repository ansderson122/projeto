#!/bin/bash

red="\033[0;31m"
redf="\033[0m"
gre="\033[0;32m"
gref="\033[0m"


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
op=0

while [ "$op" != "sair" ] ; do 
  read -p "Informe qual das 12 questões você deseja acessar: " op
  echo " "
  if test -f "enunciado/ex$op.sh" ; then
    echo " "
    else
      echo "Tente novamente"
      echo " "
      continue  
  fi
  bash "ex/ex$op.sh" 
done