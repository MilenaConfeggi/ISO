#Controlo que se pase un parametro
if [ $# -ne 1 ];then
  echo "Error: Deben pasarse un parametro"
  exit 1
fi
#Controlo que el parametro recibido sea un directorio
if [ ! -d $1 ]; then
  echo "El directorio no existe"
  exit 4
fi
cant_archivos=0
for archivo in $1; do
  #Controlo que sea un archivo y que tengan permisos
  if [ -f $archivo ] && [ -r $archivo ] && [ -w $archivo ]; then
    ((cant_archivos++))
  fi
done
echo "La cantidad de archivos con permisos de lectura y escrituras son de $cant_archivos"
