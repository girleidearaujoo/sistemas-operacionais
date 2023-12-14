#!/bin/bash

# LATAM
op=$( dialog --stdout --menu 'Bem-Vindo ao serviço de Check-in e bagagem da LATAM, o que deseja?' 0 0 0 1 'Check-in' 2 'Pese sua bagagem' )
echo $op
if [ $op -eq 1 ]; then
	id=$( dialog --stdout --inputbox 'Digite seu ID:' 0 0  )
fi
