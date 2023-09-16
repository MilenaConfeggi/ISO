#compruebo de que se pasen tres parametros
if [ $# -ne 3  ];then
  echo "Error: Deben pasarse tres parametros" 
  exit 1
fi
opcion=$1
directorio=$2
cadena=$3 
#compruebo que el primer parametro sea -a o -b
if [ $opcion -ne "-a" -o $opcion -ne "-b" ];then
  echo "Error: Debe pasarse como primer parametro -a o -b" 
  exit 1 
fi 
#compruebo que el segundo parametro sea un directorio
if [ -d $directorio ];then
  echo "Error: Debe pasarse como segundo parametro un directorio existente" 
  exit 1 
fi 
#Itero por todos los archivos del directorio
for arch in $directorio /*; do
  #verifico que lo que voy a editar es un archivo
  if [ -f $arch ]; then
    archivo=$(basename $arch)
    extension=${archivo##.}
    sinextension=${archivo%.*}
    if [ $opcion == "-a" ]; then
      nuevo_nom="$sinextension$cadena.$extension"
    elif [ $opcion == "-b" ]; then
      nuevo_nom="$cadena$sinextension.$extension"
    fi
    mv $arch $directorio/$nuevo_nom
  fi
done
