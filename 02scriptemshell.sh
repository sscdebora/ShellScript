#!/bin/bash
# Script para aprender em Shell
#source inicio.sh
MINHAFUNCAO() {
VARIAVEL=$1;
if [ "$VARIAVEL" -gt 10 ];
    then 
       echo "é maior que 10"

elif [[ "$VARIAVEL" -eq 10 ]];
    then
    	
    	echo "é igual a 10"
else 
	echo "é menor que 10"
	
fi
}
MINHAFUNCAO $1
