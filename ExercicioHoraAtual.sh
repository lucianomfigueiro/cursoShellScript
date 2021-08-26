#!/bin/bash

##############################################################
#                        			             #
# ExercicioHoraAtualsh 				             #
# Autor: Luciano Maciel Figueiro -(luciano.teste37@gmail.com)#
# Data Criação: 24/08/2021				     #
#							     # 
# Descrição: Script que, de acordo com a hora atual do       #
# 	     sistema, irá imprimir uma saudação na tela e    #
# 	     mostrar a hora no formato 12 horas 	     #
#							     #
# Exemplo de uso: ./ExercicioHoraAtual.sh		     #
#							     #
##############################################################

HORAATUAL=$(date +%H)
HORAFORMATADA=$(date +%r |cut -d":" -f1-2)

if [ "$HORAATUAL" -ge 06 -a "$HORAATUAL" -lt 12 ]
then
    echo "Bom Dia!"
    echo "A hora atual é: $HORAFORMATADA AM"
elif [ "$HORAATUAL" -ge 12 -a "$HORAATUAL" -lt 18 ]
then
    echo "Boa Tarde!"
    echo "A hora atual é: $HORAFORMATADA PM"
elif [ "$HORAATUAL" -ge 18 -o "$HORAATUAL" -eq 23 ]
then
    echo "Boa Noite!"
    echo "A hora atual é: $HORAFORMATADA PM"
else    
    echo "Boa Noite!"
    echo "A hora atual é: $HORAFORMATADA AM"
fi
