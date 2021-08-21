###################################################################
#                        			                  #
# Relatório da maquina - Exibir algumas informações da maquina    #
# Autor: Luciano Maciel Figueiro - (luciano.teste37@gmail.com)    #
# Data Criação:20/08/2021				    	  #
#							     	  # 
# Descrição: O Programa deverá exibir algumas informações sonre   #
#	     a maquina atual do usuario                           #
#	         					       	  #
# Exemplo de uso: ./Exercicio1RelarioMaquina.sh		          #
#							          #
###################################################################

NOMEMAQUINA=$(hostname)
DATAATUAL=$(date)
LIGADADESDE=$(uptime -s)
CORES=$(cat /proc/cpuinfo |grep "cpu cores" |cut -d":" -f2)
MODELOCPU=$(cat /proc/cpuinfo |grep "model name" |cut -d":" -f2)
MEMORIA=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d":" -f2|tr -d kB) / 1024) 
PARTICOES=$(df -h|egrep -v '(tmpfs|udev)')
KERNEL=$(uname -r)

echo "=================================================="
echo "Relatório da máquina: $NOMEMAQUINA"
echo "Data/Hora: $DATAATUAL"
echo "=================================================="

echo ""
echo "Maquina ativa desde: $LIGADADESDE"
echo ""
echo "Versão do Kernel: $KERNEL "
echo ""
echo "CPUs"
echo "Quantidade de CPUs/Core: $CORES "
echo "Modelo da CPU: $MODELOCPU"
echo ""
echo "Memória total: $MEMORIA MB "
echo ""
echo "Partições"
echo "$PARTICOES"
echo "=================================================="
