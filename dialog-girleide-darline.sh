#!/bin/bash

dialog --yesno "Deseja continuar?" 0 0 

if [ $? = 0 ]; then
	echo "Digite seu nome"
	nome=$( dialog --stdout --inputbox "Digite seu nome: " 0 0 )
	cor=$( dialog --stdout --menu "Oi, "$nome".Escolha uma cor." 0 0 0 amarelo "Cor do Limão Siciliano" roxo "Cor do Repolho Roxo" vermelho "Cor da Maçã")
	dialog --msgbox "Sua cor é $cor. Boa escolha" 0 0
else
	echo "OK"
fi
