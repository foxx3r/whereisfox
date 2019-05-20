#!/bin/bash

echo ' mmmmmm   "               #         #                      m""
 #      mmm    m mm    mmm#         #mmm   m   m         mm#mm   mmm   m   m
 #mmmmm   #    #"  #  #" "#         #" "#  "m m"           #    #" "#   #m#
 #        #    #   #  #   #         #   #   #m#            #    #   #   m#m
 #      mm#mm  #   #  "#m##         ##m#"   "#             #    "#m#"  m" "m
                                            m"
                                           "" '

echo "Telegram: @Foxxxer_SA"
echo "Se inscreve lá @AcervoHackerBR!!"
echo "GitHub: foxx3r"
sleep 2
while true
do
echo ""
echo "[1] PROCURAR POR ARQUIVOS DO SISTEMA"
echo "[2] PROCURAR POR ARQUIVOS DE USUÁRIOS"
read -p "Qual a sua opção? -> " fox
if [ $fox == 1 ]
then
	read -p "Deseja procurar por qual arquivo? -> " fux
	echo "o arquivo $fux está nas seguintes pastas:"
	echo ""
	whereis $fux | cut -d' ' -f2-99
	sleep 1
elif [ $fox == 2 ]
then
	echo "[1] PESQUISA BÁSICA"
	echo "[2] PESQUISA AVANÇADA"
	read -p "Que tipo de pesquisa deseja fazer? -> " fux
	if [ $fux == 1 ]
	then
		read -p "Digite o diretório de inicio das buscas -> " fax
		read -p "Qual o nome do arquivo que deseja procurar? -> " fix
		echo ""
		echo "procurando pelo arquivo $fix..."
		find $fax -name $fix
	elif [ $fux == 2 ]
	then
		echo "[1] PESQUISA SEM DISTINÇÃO DE MAIUSCULAS E MINUSCULAS"
		echo "[2] PROCURA POR DIRETÓRIOS"
		echo "[3] PROCURA POR CORINGAS"
		echo "[4] PROCURAR ARQUIVOS POR SUA PERMISSÃO"
		echo "[5] PROCURAR POR TODOS OS ARQUIVOS QUE NÃO TENHAM A PERMISSÃO ESPECIFICADA"
		echo "[6] PROCURAR POR DIRETÓRIOS VAZIOS"
		echo "[7] PROCURAR POR ARQUIVOS VAZIOS"
		echo "[8] PROCURAR POR PASTAS OCULTAS"
		echo "[9] FILTRAR ARQUIVOS POR TAMANHO"
		echo "[10] PROCURAR POR ARQUIVOS ACESSADOS NOS ULTIMOS MINUTOS ESPECIFICADOS"
		read -p "Qual a sua opção? -> " opcao
	fi
fi
done
