#!/bin/bash
#ps-Al |grep -c oracle
function comprobarproceso () {
#read -p "pide algo: " basededatos

cuenta=$( ps -Al |grep -c $1 )

if [[ $cuenta == 0  ]]; 
	then
		echo No, se está ejecutando
	else	
		echo Sí, se está ejecutando
fi
echo $cuenta
}
