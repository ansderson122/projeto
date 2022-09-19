#!bin/bash

for i in *.txt;
do
    v=$(cat $i | head -n 1 | cut -d ' ' -f 1)
    mv $i "$v.txt"
done
