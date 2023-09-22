#!/bin/bash

echo "Digite o nome do diretorio"
read nome

if [ -d $nome ];
then
	echo "O diretório já existe!"
else
       mkdir $nome
       echo "Diretório criado com sucesso"
fi
