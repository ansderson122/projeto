#!/bin/bash


if [ "+" = "$2" ] ; then
	echo $(($1+$3))
    elif [ "x" = "$2" ] ; then
    	echo $(($1*$3))
    elif [ "-" = "$2" ] ; then
    	echo $(($1-$3))
    elif [ "/" = "$2" ] ; then
    	echo $(($1/$3))
fi

