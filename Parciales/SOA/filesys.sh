#!/bin/bash
#Controlo parametros
if [ $# -lt 1 ]; then
  echo "Se debe pasar al menos un parametro"
  exit 1
fi
cant=0
#Itero por los parametros recibidos
for ruta in $*; do
  if [ -e $ruta ]; then
    if [ -f $ruta ]; then
       #Comprimo
       gzip $ruta
    elif [ -d $ruta ]; then
       if  [ -r $ruta ]; then
         #Empaqueto y comprimo
         tar -czf comp.tar.gz $ruta
       fi
       if [ -w $ruta ]; then
         rm $ruta
       fi
    fi
  else
    ((cant++))
  fi
done
echo "La cantidad de inexistentes es de $cant"
