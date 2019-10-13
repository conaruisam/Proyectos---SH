source numerodeprocesos.sh
#while [[ $usabd != "n"]] && [[ $usabd != "s"]];
cagadas=0
while true;
do
read -n 1 -p "Su proyecto usa bases de datos (s/n):" usabd
if [[ $usabd == "s" ]];
	then
			read -p "Cual es tu base de datos:" basededatos
			#Comprobamos si el proceso
			comprobarproceso $basededatos
			echo base_datos=true>>proyecto.properties
		break

	elif [[ $usabd == "n" ]];
		then
			echo base_datos=false>>proyecto.properties
		break
	
	
	fi
	cagadas=$(( $cagadas + 1 ))
	if [[ $cagadas == 3 ]];	
		then 
			echo "pesao"
			exit
	fi
done
