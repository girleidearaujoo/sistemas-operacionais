#!/bin/bash

# le a operação e o número n

echo "Digite a operação: 1 para sequencia de fibonacci, 2 para fatorial, 3 para acertar o número" 
read op
echo "Digite um número N"
read n

# verifica qual operação é pra fazer

if [ $op -eq 1 ]
then
	# cria variaveis auxiliares para fazer o fibonacci
	i=1
	anterior=0
	proximo=$(($i+$anterior))
	# repetição
	for k in $(seq 1 $n)
	do
		# a sequencia de fibonacci consiste em: o próximo número é a soma dos dois anteriores
		echo $i
		anterior=$i
		i=$proximo
		proximo=$(($anterior+$i))
	done
elif [ $op -eq 2 ]
then
	# cria variaveis para calcular o valor fatorial desse número
	count=$(($n*($n-1)))
	n=$(($n-2))
	while [ $n -gt 1 ]
	do
	# número fatorial é a multiplicação desse número por todos os seus antecessores até o 1
		count=$(($n*$count))
		n=$(($n-1))
	done
	echo $count
else
	# a variavel irá criar um número aleatorio 
	echo "Você tem 10 chances para advinhar um número entre 0 e 50"
	ans=$(($RANDOM % 50))
	chances=10
	until [ $n -eq $ans ]
	do
	# A repetição irá continuar acontecendo até o valor ser verdadeiro, cada chute irá diminuir seu número de chances
		chances=$(($chances-1))
		if [ $n -lt $ans ] 
		then
	#  Avisará se o número for maior ou menor que seu chute
			echo "É maior"
 		else
			echo "É menor"
		fi

		if [ $chances -eq 0 ]
		then
			break
		fi
		read n
	done
	echo "O número era:" $ans
fi
