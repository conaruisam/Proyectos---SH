#la variable q se va a guardar lo q se va a pedir por pantalla
#pregunta q le va hacer al usuario por pantalla
#numero maximo de cagadas que va a leer antes de decirle error
#que regla de vadilacon al texto que se introduce
#4 variables dentro de la funcion variable=$1 pregunta=$2 n.maximo=$3 validacion=$4
#si la variable no tiene 
source formato.sh
#
# Validar argumento
# Asegura que el valor ha sido suministrado sino da un error y cierra el programa
# Argumento 1. Error
# Argumento 2. Valor a comprobar
#


function validar_argumento(){
if [[ -z $2 ]];then
		
	echo_error "$1"
	exit 1
			
fi
}
# 
# Aseguramos que el valor no esté vacio.
# 	
#
#
function asegurarvalor(){
if [[ -z "$2" ]];
	then
		echo "$1"
	else
		echo "$2"
fi
}

#
# Comprueba si el valor que me pasan está bien 
# Si está bien te lo indica, sino se cierra.
#
function comprobar_argumento(){
	if [[ $1 =~ $2 ]];
		then
			echo "bien hecho"
		else
			echo_error "$3"
			exit 1
	fi
}

#
# Pedir valores que deben ser:
# Variable
# Pregunta
# Maximo
# Validación
#
# Hay un bucle que te 
function pedir_valor(){
	local	variable=$1	
	local	pregunta=$2
	local	maximo=$3	
		validacion="$4"	
	validar_argumento "no se ha suministrado un valor adecuado para la variable" $variable
	eval $variable=""
	validar_argumento "no se ha suministrado una pregunta adecuada" $pregunta
	maximo=$(asegurarvalor 3 $maximo)
	validacion=$(asegurarvalor ".*" "$validacion")
	comprobar_argumento $maximo "^[0-9]+$" "no me has introducido un número"

valido=false
errores=0

while [[ $errores < 3 ]]

	do
		read -p "$pregunta" respuesta
		if [[ $respuesta =~ $validacion ]];
		then 
			valido=true
			eval $variable="$respuesta"
			echo ""
			break 
		else
			echo "Tiene que poner sí o no"
			errores=$(( $errores + 1 ))
		fi	
		
		bd=$respuesta
		
done
	if [[ $valido == false ]]
		then
			echo_error "Demasiados intentos"
			return 1
	fi
}
	pedir_valor bd "Usa base de datos: (s/n) " 4 "^[sn]$"

	echo $variable