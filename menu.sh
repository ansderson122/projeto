#!/bin/bash
#https://www.dicas-l.com.br/cantinhodoshell/cantinhodoshell_20070720.php
export f="\033[0m"
export red="\033[0;31m"
export redN="\033[1;31m"
export gre="\033[0;32m"
export cyan="\033[0;36m"




echo -e "$gre

     _                       _____                                        
 ___/__)    /)     /)       (, /   )                                      
(, /   _   (/_   _(/  _      _/__ / __  ____   __  _  ___   _   _  _   ___
  /   (_(_/_)   (_(__(/_     /     / (_(_)(_/_/ (_(_(_// (_(_(_(__(_(_(_) 
 (_____                   ) /            .-/                              
        )                (_/            (_/                               
$f
"
echo "

▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒░░░ LISTA 01 ░░░▒▒▒▓▓▓▓▓▓▓▓▓▓▓
▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
"
op=0

while [ "$op" != "sair" ] ; do 
  echo -n -e "$gre Informe qual das 12 questões você deseja acessar: $f"
  read op
  echo " "
  if [ "$op" = "sair" ] ; then
    echo "OBRIGADO 🤗️"
    echo -e "ATE A PROXIMA 🖐️ \n"
    continue
  elif [ -f "ex/ex$op.sh" ] ; then
    echo
    bash "ex/ex$op.sh" 
    else
      echo -e "Tente novamente 🤔️ \n"
  fi
done

echo