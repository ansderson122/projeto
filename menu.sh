#!/bin/bash

export red="\033[0;31m"
export redf="\033[0m"
export gre="\033[0;32m"
export gref="\033[0m"



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
  echo -n -e "$gre Informe qual das 12 questões você deseja acessar: $gref"
  read op

  echo " "
  if [ op = "sair" ] ; then
    echo "OBRIGADO 🤗️"
    echo "ATE A PROXIMA 🖐️"
    continue
  elif [ -f "ex/ex$op.sh" ] ; then
    echo " "
    bash "ex/ex$op.sh" 
    else
      echo "Tente novamente 🤔️"
      echo " " 
  fi
  
  
done
