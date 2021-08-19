#!/bin/bash

####################################
#
# PrimeiroScript.sh - Script de Exemplo do curso
# Autor: Luciano Maciel Figueiro (lucianofigueiro37@gmail.com
# Data criação: 18/08/2021
#
# Descrição: Script de exemplo que le data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./PrimeiroScript.sh
#
# Alteracoes
#	Dia X - inclusao da função tal
#	Dia Y - Correcao tal
#
####################################

DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/lucianof/Documentos/arquivos/alunos2.txt"

# Funcao de leitura de data e hora do sistema
clear
echo "==== Meu Primeiro Script ===="
echo ""
echo "Exibir data e hora atual: $DATAHORA "

# Area de leitura da lista de alunos
echo "============================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS

DATAHORA=$(date +%H)
echo "============================="
echo "Nova hora atual: $DATAHORA"
