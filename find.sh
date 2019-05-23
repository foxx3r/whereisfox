#!/bin/bash

echo ' mmmmmm   "               #         #                      m""
 #      mmm    m mm    mmm#         #mmm   m   m         mm#mm   mmm   m   m
 #mmmmm   #    #"  #  #" "#         #" "#  "m m"           #    #" "#   #m#
 #        #    #   #  #   #         #   #   #m#            #    #   #   m#m
 #      mm#mm  #   #  "#m##         ##m#"   "#             #    "#m#"  m" "m
                                            m"
                                           "" '

echo "Telegram: @Foxxer_SA"
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
		echo "[9] PROCURAR POR ARQUIVOS ACESSADOS NOS ULTIMOS MINUTOS ESPECIFICADOS"
		read -p "Qual a sua opção? -> " opcao
		if [ $opcao == 1 ]
		then
			read -p "Em qual diretõrio deseja procurar? -> " dirCase
			read -p "Qual o nome do arquivo? -> " arqCase
			find $dirName -iname $arqCase
		elif [ $opcao == 2 ]
		then
			read -p "Qual diretório está procurando? -> " dirdir
			read -p "Qual diretório será o ponto de partida? -> " begin
			find $begin -type d -iname $dirdir
		elif [ $opcao == 3 ]
		then
			read -p "Em que diretório deseja começar? -> " dirJoker
			read -p "Digite uma palavra contida neste arquivo -> " arqJoker
			find $dirJoker -iname *$arqJoker*
		elif [ $opcao == 4 ]
		then
			echo "[1] PROCURAR POR ARQUIVOS"
			echo "[2] PROCURAR POR DIRETÓRIOS"
			read -p "Qual a sua escolha? -> " escolhaOp
			if [ $escolhaOp == 1 ]
			then
				read -p "Qual diretório será o ponto de partida? -> " dirBegin
				read -p "Qual a permissão do arquivo em octal? -> " arqBegin
				find $dirBegin -type f -perm $arqBegin -print
			elif [ $escolhaOp == 2 ]
			then
				read -p "Qual diretório será o ponto de partida? -> " dirBegin                                                                                                                  read -p "Qual a permissão do arquivo em octal? -> " arqBegin
				find $dirBegin -type d -perm $arqBegin -print
			else
				echo "opção invalida!"
			fi
		elif [ $opcao == 5 ]
		then
			echo "[1] PROCURAR POR ARQUIVOS"                              
			echo "[2] PROCURAR POR DIRETÓRIOS"                             
			read -p "Qual a sua escolha? -> " escolhaOp
			read -p "Qual diretório será o ponto de partida? -> " dirBegin                          read -p "Qual a permissão do arquivo em octal? -> " arqBegin
			if [ $escolhaOp == 1 ]
			then
				find $dirBegin -type f ! -perm $arqBegin
			elif [ $escolhaOp == 2 ]
			then
				find $dirBegin -type d ! -perm $arqBegin
			else
				echo "opção invalida!"
			fi
		elif [ $opcao == 6 ]
		then
			read -p "Qual será o diretório de partida? -> " beginDir
			find $beginDir -type d -empty
		elif [ $opcao == 7 ]
		then
			read -p "Qual será o diretório de partida? -> " beginDir
			find $beginDir -type f -empty
		elif [ $opcao == 8 ]
		then
			echo "[1] PROCURAR POR PASTAS ESCONDIDAS"
			echo "[2] PROCURAR POR ARQUIVOS ESCONDIDOS"
			read -p "Escolha uma opção -> " escolha
			read -p "Qual diretório será seu ponto de partida? -> " ponto
			if [ $escolha == 1 ]
			then
				find $ponto -type d ".*"
			elif [ $escolha == 2 ]
			then
				find $ponto -type f ".*"
			else
				echo "opção inválida!"
			fi
		elif [ $opcao == 9 ]
		then
			read -p "Qual será o diretório de partida? -> " dirPartida
			read -p "Digite o tempo em que ele foi aberto (em minutos) -> " tempo
			find $dirPartida -type f -amin -$tempo
		else
			echo "opção inválida!"
		fi
	else
		echo "opção inválida!"
	fi
else
	echo "opção inválida!"
fi
done
