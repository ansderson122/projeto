#!/bin/bash
if [ $1 -gt $2 ] ; then
	echo "O maior numero é $1"
	else
	echo "O maior numero é $2"
fi
echo "A soma dos numero $(($1+$2))"