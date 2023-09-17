#Creo arreglo
array=()
for linea in cat ~/Documents/practica3; do
  array+=$(find $rut -name "*.doc")
done
#Defino funciones
#No hago especificamente lo que dice el enunciado
#Si encuentra devuelve la pasicion en que encontro
#Sino devuelve -1
verArchivo(){
  existe=0
  pos=-1
  for elem in ${array[*]}; do
    ((pos++))
    if [ $elem == $1 ]; then
      echo "El elemento $1 se encuentra"
      existe == 1
      break
    fi
  done
  if [ $existe == 0 ]; then
    echo "El elemento $1 no se encuentra"
    pos=-1
  fi
return $pos
}
cantidadArchivos(){
  echo "La cantidad de archivos con terminacion .doc es de ${#array[@]}"
}
borrarArchivo(){
  echo "Desea eliminar el archivo logicamente? (Escriba si o no)"
  read rta
  if [ $rta == "si" -o $rta == "no" ]; then
    pos=verArchivo  
    $pos "$1"
    if [ ! $pos = -1 ]; then
      echo "$pos"
      unset 'array[$pos]'
      if [ $rta == "no" ]; then
        rm -f $1
        echo "El archivo se ha eliminado exitosamente"
      fi
    fi
  else
    echo "Escriba si o no"
  fi
}
borrarArchivo hola.doc
