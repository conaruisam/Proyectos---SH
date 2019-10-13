#!/bin/bash
echo hola $1 $2 


let numero=27+4 
echo $numero


numero2=$((3*5))
echo $numero2


read -p "introduce tu nombre:" nombre
echo hola $nombre
read -n 2 
if [[ $nombre == "isam" ]];
	then 
		echo Soy yo!!!
	elif [[ $nombre == "pepe" ]];
	then
		echo Es mi compañero!!
	else	
		echo No soy yo!!!
fi


numero3=1
while [[ $numero3 < 3 ]];
	do
		echo $numero3
		numero3=$(($numero3+1))
	done


