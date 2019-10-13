opcion=-1
while [[ $opcion != 0 ]];
do
clear

echo Menú principal
echo 1. Crear proyecto
echo Pulse 0 para salir
echo Qué desea hacer

read -n 1 opcion

if [[ $opcion == "1" ]];
	then 
		source crearproyecto.sh
fi
done
