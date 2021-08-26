#!/bin/bash

USUARIO=$(grep "$1" /etc/passwd)

if [ $# -gt 0 ]
then 
    if [ -n "$USUARIO" ] 
    then
	echo "O usuário existe"
    else
	echo "O usuário não existe"
    fi
else
    echo "Informe o parametro!!"
fi
