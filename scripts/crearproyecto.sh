# Preguntar el nombre del proyecto
# Crear un proyecto con las carpetas sources, backup, bin.

# Mirar si me pasan nombre, sino lo pido.


# Aquí pregunta como se llama el proyecto, sino te lo da lo repite
nombre=$1
if [[ -z $nombre ]]
	then
	source proyecto.properties
#	  .    proyecto.properties
	nombre=$proyecto
fi

if [[ -d $nombre ]]
	then
	echo -p "el proyecto ya existe"
fi 

if [[ -z $nombre ]]
	then
	read -p "Como se llama el proyecto" nombre
fi

# Cuando te dé el nombre, puede crear las carpetas.
mkdir $nombre
# Dar a la carpeta bin permisos de ejecución
mkdir $nombre/bin
mkdir $nombre/src
# Miro si existe un usuario de backup en la máquina creada, sino existe creamos el usuario, la carpeta backup la crea el usuario backup. Y los demas usuarios solo tienen permisos de lectura, únicamente el usuario autorizado será backup.
mkdir $nombre/backup


# Crear fichero de configuración del proyecto

