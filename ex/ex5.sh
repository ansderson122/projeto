#!/bin/bash
if [ -e $1 ]; then 
    echo "O arquivo $1 existe e tem $( stat -c %s $1) bytes."
    else 
    echo "O arquivo $1 nao existe."
fi
