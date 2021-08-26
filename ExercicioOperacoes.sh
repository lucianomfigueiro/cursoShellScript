#!/bin/bash

##############################################################
#                        			                            #
# ExercicioOperaçoesValores				                      #           
# Autor: Luciano Maciel Figueiro -(luciano.teste37@gmail.com)#
# Data Criação: 25/08/2021				                         #
#							                                        # 
# Descrição: Script que recebe dois valores e apresenta um   #
# 	     menu de opçoes para calcular os valores	             #
# 	     						                                     #
#							                                        #
# Exemplo de uso: ./ExercicioOperacoesValores.sh	          #
#							                                        #
##############################################################

read -p "Informe o primeiro valor: " VALOR1
read -p "Informe o segundo valor: " VALOR2

if [ -z "$VALOR1"  -o -z "$VALOR2" ]
then
   echo "Algum dos valores não foi informado!"	
   exit 2
fi

echo 
echo "=========================="
echo "  Escolha uma operação"
echo "*** 1 = SOMA ***"
echo "*** 2 = Subtração ***"
echo "*** 3 = Multiplicação ***"
echo "*** 4 = Divisão ***"
echo "*** Q = Sair ***"
read OPERACAO

case $OPERACAO in
    1)
    echo "SOMA"
    SOMA=`expr $VALOR1 + $VALOR2`
    echo "$VALOR1 + $VALOR2 = $SOMA" 
    ;;
    2)
    echo "SUBTRAÇÃO"
    SUB=`expr $VALOR1 - $VALOR2`
    echo "$VALOR1 - $VALOR2 = $SUB"
    ;;
    3)
    echo "MULTIPLICAÇÃO"
    if [ "$VALOR1" -eq 0 -o "$VALOR2" -eq 0 ]
    then
       echo "ERRO!! Algum dos valores informados é ZERO!"
       exit 2
    else
       MULTI=`expr $VALOR1 \* $VALOR2`
       echo "$VALOR1 X $VALOR2 = $MULTI"
    fi
    ;;
    4)
    echo "DIVISÃO"
    if [ "$VALOR1" -eq 0 -o "$VALOR2" -eq 0 ]
    then 
       echo "ERRO! Algum dos valores informados é ZERO!"
    else
       DIV=`expr $VALOR1 \/ $VALOR2`
       RESTO=`expr $VALOR1 % $VALOR2`
       if [ "$RESTO" -eq 0 ]
       then
	  echo "Divisão Exata"     
          echo "$VALOR1 / $VALOR2 = $DIV"
       else
	  echo "Divisão com resto = $RESTO"
	  echo "$VALOR1 / $VALOR2 = $DIV"
       fi
    fi
    ;;
    Q)
    echo "Saindo..."
    sleep 3
    ;;
    *)
    echo "Opção invalida"
    ;;
esac

