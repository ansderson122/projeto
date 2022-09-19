#!/bin/bash
echo "informe o nome do usuário a ser consultado"
read nome
if [ $(grep -i ^$nome: /etc/passwd) ] ;then
  	echo "O usuário existe 😀️"
else
	echo "O usuário não existe 😔️"
fi
