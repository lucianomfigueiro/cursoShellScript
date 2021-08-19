#!/bin/bash

##############################################################
#                        			             #
# BuscaAluno.sh - Prcourar nome completo do aluno            #
# Autor: Luciano Maciel Figueiro - (lucianoteste37@gmail.com)#
# Data Criação: 18/08/2021				     #
#							     # 
# Descrição: Script de exemplo para o comando read           #
# 	     A partir de uma entrada do usuario, será feita  #
# 	     uma busca no arquivo alunos2.txt		     #
#							     #
# Exemplo de uso: ./BuscaAlunos.sh			     #
#							     #
##############################################################

ARQALUNOS="/home/lucianof/Documentos/arquivos/alunos2.txt"

clear
echo "========= Script de Busca de alunos =========="
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
read -p "Por favor informe o nome do aluno: " ALUNO

ALUNOCOMPLETO=$(grep "$ALUNO" $ARQALUNOS)

echo ""
echo "O nome do aluno é: $ALUNOCOMPLETO"
echo ""
echo "Fim do script"


