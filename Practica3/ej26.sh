#Controlo que se reciba al menos un parametro
if [ $# -lt 1 ]; then
  echo "El script requiere al menos un parametro"
  exit 1
fi
cant_inexistentes=0
for (( i=1; i<=$#; i+=2 )); do
  #COntrolo si es arch o direc
  if [ -e $i ]; then
    #Controlo si es arch
    if [ -f $i ]; then
      echo "$i es un archivo"
    else
      echo "$i es un directorio"
    fi
  else
    cant_inexistentes=$((cant_inexistentes + 1))
  fi
done
echo "La cantidad de directorios o archivos inexistentes es de $cant_inexistentes"
