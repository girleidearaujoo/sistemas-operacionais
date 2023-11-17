#!/bin/bash

fatorial(){
	aux=$(($1*aux))
	if [$1 -eq 1]
	then
		return 
	else
		fatorial $(($1-1))
	fi
}
read n
fatorial $n
