#compruebo de que se pase solo un parametro
if [ $# -ne 1 ];then
  echo "Error: Deben pasarse un nombre" 
  exit 1 
fi 

nom="$1"
#-e devuelve true si la variable corresponde al nombre de un archivo o directorio
if [ -e "$nom" ]; then
  #-f devuelve true si la variable corresponde al nombre de un archivo
  if [ -f "$nom" ]; then
    echo "Es un archivo"
  #-d devuelve true si la variable corresponde al nombre de un directorio
  elif [ -d "$nom" ]; then
    echo "Es un directorio"
  fi
else
  #creo directorio
  mkdir "$nom"
  echo "Se ha creado el directorio"
