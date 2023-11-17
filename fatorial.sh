#!/bin/bash

fatorial(){
	n=$1
#	echo $n
	aux=$n
	for i in $(seq 1 1 $(($n-1)))
	do 
#		echo $i
		aux=$((i*aux))
	done

	echo $aux
}
read param
fatorial $param
