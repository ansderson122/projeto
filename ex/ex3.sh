#!/bin/bash
dir=$(ls -1 $1)
for i in $dir ; do 
    if [ -d $i ] ; then
        echo "$i (dir)"
        else
        echo $i
    fi
done 

