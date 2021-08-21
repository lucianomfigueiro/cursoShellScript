#!/bin/bash

###################################################################
#                        			                  #
# Soma dois valores - Exercicio que le entradas do usuario e soma #
# Autor: Luciano Maciel Figueiro - (lucianoteste37@gmail.com)     #
# Data Criação:20/08/2021				    	  #
#							     	  # 
# Descrição: Usuário irá digitar dois valores e o programa irá    #
#	     soma-los 					       	  #
# Exemplo de uso: ./Exercicio1SomaValores.sh		          #
#							          #
###################################################################

echo "========================"
read -p "Digite o primeiro valor: " VALOR1
read -p "Digite o segundo valor: " VALOR2

SOMA=$(($VALOR1+$VALOR2))

echo "A soma dos valores digitados é: $SOMA"

