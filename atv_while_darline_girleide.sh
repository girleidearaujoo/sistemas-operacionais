#!/bin/bash

opc="S"
while [ $opc == "S" ]
do
	echo "Digite a opção"
	read opcao nome antigo

	case $opcao in
	"--cria") touch $nome;;
	"--remove") rm $nome;;
	"--renomeia") mv $antigo $nome;;
	"*") echo "Opcao invalida"
	esac

#	echo $continuar
	echo "Deseja continuar?"
	read opc
done
