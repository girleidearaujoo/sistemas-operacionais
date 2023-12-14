#!/bin/bash

# LATAM
op=$( dialog --stdout --menu 'Bem-Vindo ao serviço de Check-in,  bagagem e compra de passagens da LATAM, o que deseja?' 0 0 0 1 'Check-in' 2 'Pese sua bagagem' 3 'Compre uma passagem' )
echo $op
if [ $op -eq 1 ]; then
	id=$( dialog --stdout --inputbox 'Digite seu ID:' 0 0  )
elif [ $op -eq 3 ]; then
	destino=$( dialog --stdout --menu 'Para onde você quer ir?' 1 'São Paulo' 2 'Rio Janeiro' 3 'Santa Catarina'  0 0 0)
	if [ $destino -eq 1 ] then;
		dialog --msgbox
fi
