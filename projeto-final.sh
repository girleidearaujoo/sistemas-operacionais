#!/bin/bash

# LATAM
continue=1
while [ $continue ]
do
    op=$( dialog --stdout --menu 'Bem-Vindo ao serviço de Check-in,  bagagem e compra de passagens da LATAM, o que deseja?' 0 0 0 1 'Check-in' 2 'Pese sua bagagem' 3 'Compre uma passagem' )
    echo $op
    if [ $op -eq 1 ]; then
    	id=$( dialog --stdout --inputbox 'Digite seu ID:' 0 0  )
    	 dialog --yesno 'Confirma sua presença no voo?' 0 0
    	 if [ $? = 1 ]; then
    	    dialog --msgbox 'Que bom! Nos vemos no aeroporto.'
    	 else
    	    dialog --msgbox 'Que pena! Nos vemos em uma próxima.'
    	 fi
    elif [ $op -eq 3 ]; then
        idade=$( dialog --stdout --inputbox 'Digite sua idade:' 0 0 )
        until [[ $idade -gt 18 ]]; do
            dialog --msgbox "Idade inadequada! Peça para alguém de maior responder." 0 0
            idade=$( dialog --stdout --inputbox 'Digite sua idade:' 0 0 )
        done
        Npassagem = $( dialog --stdout --inputbox 'Quantas passagens deseja comprar?' 0 0 )
        for i in [1..$Npassagem] ; do
            nome=$( dialog --stdout --inputbox 'Digite o nome do passageiro' 0 0 )
            destino=$( dialog --stdout --menu 'Para onde você quer ir?' 1 'São Paulo' 2 'Rio Janeiro' 3 'Santa Catarina'  0 0 0)
            case destino in
                1)
                dialog --msgbox 'Ok $nome. Seu destino é São Paulo.'
                ;;
                2)
                dialog --msgbox 'Ok $nome. Seu destino é Rio de Janeiro.'
                ;;
                3)
                dialog --msgbox 'Ok $nome. Seu destino é Santa Catarina.'
                ;;
            esac
        done
    else
        peso=$( dialog --stdout --inputbox 'Digite o peso de sua mala:' 0 0 )
    
        if (( $peso <= 23 )); then
            dialog --msgbox "Peso permitido!" 0 0
        else
            dialog --msgbox "Peso não permitido, cada quilo excedido custará 12,00" 0 0
            dif=$((peso - limit))
            multa=$((dif * 12))
            dialog --msgbox "Sua multa é de: R$ $multa" 0 0
            
        fi  
    fi
    continue=$( dialog --stdout --yesno 'Deseja continuar no programa?' 0 0 )
done
