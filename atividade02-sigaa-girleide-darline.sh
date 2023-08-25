#!/bin/bash

echo "Digite sua nota do 1 e 2 bim"
read  nota1 nota2
echo $nota1 $nota2
if [ $nota1 -lt 6 ] || [ $nota2 -lt 6 ];
then
	echo "Digite sua nota da rs1"
	read rs1
	echo $rs1
else
	echo "Digite sua nota do 3 e 4 bim"
	read nota3 nota4
	echo $nota3 $nota4
	if[ $nota3 -lt 6 ] || [ $nota4 -lt 6 ];
	then
		echo "Digite sua nota da rs2"
		read rs2
		echo $rs2
	else
		echo "aprovado"
	fi
fi
