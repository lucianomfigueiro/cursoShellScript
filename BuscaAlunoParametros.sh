#!/bin/bash

##############################################################
#                        			             #
# BuscaAluno.sh - Prcourar nome completo do aluno            #
# Autor: Luciano Maciel Figueiro - (lucianoteste37@gmail.com)#
# Data Criação: 18/08/2021				     #
#							     # 
# Descrição: Script de exemplo para o uso de parametros      #
# 	     A partir de uma entrada do usuario, será feita  #
# 	     uma busca no arquivo alunos2.txt		     #
#							     #
# Exemplo de uso: ./BuscaAlunosParametros.sh			     #
#							     #
##############################################################

ARQALUNOS="/home/lucianof/Documentos/arquivos/alunos2.txt"

clear
echo "========= Script de Busca de alunos =========="
echo ""

ALUNOCOMPLETO=$(grep "$1" $ARQALUNOS)

echo ""
echo "O nome do aluno é: $ALUNOCOMPLETO"
echo ""
echo "Fim do script"


