underline=$(tput sgr 0 1)
bold=$(tput bold)
rojo=$(tput setaf 1)
verde=$(tput setaf 2)
amarillo=$(tput setaf 3)
azul=$(tput setaf 4)
morado=$(tput setaf 5)
resetformato=$(tput sgr0)
error=$(tput setaf 6)

function echo_rojo(){
	echo "${rojo}$1${resetformato}"
}

function echo_verde(){
	echo "${verde}$1${resetformato}"
}

function echo_amarillo(){
	echo "${amarillo}$1${resetformato}"
}

function echo_azul(){
	echo "${azul}$1${resetformato}"
}
function echo_morado() {
	echo "${morado}$1${resetformato}"
}

function echo_bold(){
	echo "${bold}$1${resetformato}"
}

function echo_underline(){
	echo "${underline}$1${resetformato}"
}
function echo_pause(){
	echo 
	read -p "pulsa cualquier tecla para continuar...." -N 1
}

function echo_titulo(){
	echo 
	echo_bold "$1"
	echo
}

function echo_morado_subrayado_negrita(){

	echo "${rojo}${underline}${bold}$1${resetformato}"

}

function echo_error(){

echo "${bold}${rojo}$1${resetformato}"

}