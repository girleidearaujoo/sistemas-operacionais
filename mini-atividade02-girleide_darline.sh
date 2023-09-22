#!/bin/bash

echo "Digite a opção"
read opcao nome antigo

case $opcao in
"--cria") touch $nome;;
"--remove") rm $nome;;
"--renomeia") mv $antigo $nome;;
"*") echo "Opcao invalida"
esac
